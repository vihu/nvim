local M = {}

M.toggle_go_test = function()
  -- Get the current buffer's file name
  local current_file = vim.fn.expand '%:p'
  if string.match(current_file, '_test.go$') then
    -- If the current file ends with '_test.go', try to find the corresponding non-test file
    local non_test_file = string.gsub(current_file, '_test.go$', '.go')
    if vim.fn.filereadable(non_test_file) == 1 then
      -- Open the corresponding non-test file if it exists
      vim.cmd.edit(non_test_file)
    else
      print 'No corresponding non-test file found'
    end
  else
    -- If the current file is a non-test file, try to find the corresponding test file
    local test_file = string.gsub(current_file, '.go$', '_test.go')
    if vim.fn.filereadable(test_file) == 1 then
      -- Open the corresponding test file if it exists
      vim.cmd.edit(test_file)
    else
      print 'No corresponding test file found'
    end
  end
end

-- Copy the current file path and line number to the clipboard, use GitHub URL if in a Git repository
M.copyFilePathAndLineNumber = function()
  local current_file = vim.fn.expand '%:p'
  local current_line = vim.fn.line '.'
  local is_git_repo = vim.fn.system('git rev-parse --is-inside-work-tree'):match 'true'

  if is_git_repo then
    local current_repo = vim.fn.systemlist('git remote get-url origin')[1]
    local current_branch = vim.fn.systemlist('git rev-parse --abbrev-ref HEAD')[1]

    -- Convert Git URL to GitHub web URL format
    current_repo = current_repo:gsub('git@github.com:', 'https://github.com/')
    current_repo = current_repo:gsub('%.git$', '')

    -- Remove leading system path to repository root
    local repo_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]
    if repo_root then
      current_file = current_file:sub(#repo_root + 2)
    end

    local url = string.format('%s/blob/%s/%s#L%s', current_repo, current_branch, current_file, current_line)
    vim.fn.setreg('+', url)
    print('Copied to clipboard: ' .. url)
  else
    -- If not in a Git directory, copy the full file path
    vim.fn.setreg('+', current_file .. '#L' .. current_line)
    print('Copied full path to clipboard: ' .. current_file .. '#L' .. current_line)
  end
end

-- Copy just the full local path of the current buffer
M.copyCurrentFilePath = function()
  local current_file = vim.fn.expand '%:p'

  -- Check if buffer has a valid file path
  if current_file == '' or current_file == nil then
    print 'No file path available for current buffer'
    return
  end

  -- Copy to system clipboard
  vim.fn.setreg('+', current_file)

  -- Also copy to unnamed register for vim-internal pasting
  vim.fn.setreg('"', current_file)

  -- Provide user feedback with shortened path for readability
  local shortened_path = vim.fn.fnamemodify(current_file, ':~')
  print('Copied file path: ' .. shortened_path)
end

-- Table to track preview processes by buffer
local preview_processes = {}
-- Table to track intentionally stopped processes
local stopped_processes = {}
-- Flag to ensure global cleanup is only set up once
local cleanup_autocmd_set = false

-- Set up global cleanup for markdown previews
local function setup_global_cleanup()
  if cleanup_autocmd_set then
    return
  end

  vim.api.nvim_create_autocmd('VimLeavePre', {
    callback = function()
      -- Kill all active preview processes when exiting Neovim
      for bufnr, job_id in pairs(preview_processes) do
        stopped_processes[job_id] = true -- Mark as intentionally stopped
        vim.fn.jobstop(job_id)
      end
      -- Clear the tables
      preview_processes = {}
      stopped_processes = {}
    end,
    desc = 'Cleanup markdown previews on exit',
  })

  cleanup_autocmd_set = true
end

-- Preview markdown file with GitHub CLI
M.preview_markdown = function()
  local current_file = vim.fn.expand '%:p'
  local bufnr = vim.api.nvim_get_current_buf()

  -- Check if current buffer is a markdown file
  if vim.bo.filetype ~= 'markdown' then
    print 'Error: Not a markdown file'
    return
  end

  -- Check if file exists and is saved
  if vim.fn.filereadable(current_file) == 0 then
    print 'Error: File does not exist or is not saved'
    return
  end

  -- Check if gh CLI is available
  if vim.fn.executable 'gh' == 0 then
    print 'Error: GitHub CLI (gh) not found in PATH'
    return
  end

  -- Kill existing preview for this buffer if it exists
  if preview_processes[bufnr] then
    local job_id = preview_processes[bufnr]
    stopped_processes[job_id] = true -- Mark this job as intentionally stopped
    vim.fn.jobstop(job_id)
    preview_processes[bufnr] = nil
  end

  -- Execute the command asynchronously
  local cmd = { 'gh', 'markdown-preview', current_file }
  local filename = vim.fn.fnamemodify(current_file, ':t')

  local job_id = vim.fn.jobstart(cmd, {
    on_exit = function(job_id_inner, exit_code, _)
      -- Clean up the process reference
      preview_processes[bufnr] = nil

      -- Only show error if it wasn't intentionally stopped and actually failed
      if exit_code ~= 0 and not stopped_processes[job_id_inner] then
        print 'Error: gh markdown-preview failed'
        print 'Install with: gh extension install yusukebe/gh-markdown-preview'
      end

      -- Clean up stopped process tracking
      stopped_processes[job_id_inner] = nil
    end,
    on_stderr = function(_, data, _)
      if data and #data > 0 and data[1] ~= '' then
        local error_msg = table.concat(data, ' ')
        if string.match(error_msg, 'unknown command') or string.match(error_msg, 'markdown%-preview') then
          print 'Error: gh markdown-preview extension not found'
          print 'Install with: gh extension install yusukebe/gh-markdown-preview'
        end
      end
    end,
    detach = true,
  })

  if job_id > 0 then
    -- Store the job ID for this buffer
    preview_processes[bufnr] = job_id

    -- Set up autocmd to kill preview when buffer is closed
    vim.api.nvim_create_autocmd('BufDelete', {
      buffer = bufnr,
      callback = function()
        if preview_processes[bufnr] then
          local job_id_to_stop = preview_processes[bufnr]
          stopped_processes[job_id_to_stop] = true -- Mark as intentionally stopped
          vim.fn.jobstop(job_id_to_stop)
          preview_processes[bufnr] = nil
        end
      end,
      once = true,
    })

    -- Set up global cleanup on first use
    setup_global_cleanup()

    print('Opening markdown preview for: ' .. filename)
  else
    print 'Error: Failed to start markdown preview'
  end
end

-- Function to manually close preview for current buffer
M.close_markdown_preview = function()
  local bufnr = vim.api.nvim_get_current_buf()

  if preview_processes[bufnr] then
    local job_id = preview_processes[bufnr]
    stopped_processes[job_id] = true -- Mark as intentionally stopped
    vim.fn.jobstop(job_id)
    preview_processes[bufnr] = nil
    print 'Markdown preview closed'
  else
    print 'No active preview for this buffer'
  end
end

return M
