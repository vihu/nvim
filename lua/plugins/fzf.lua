-- Function to check if a command exists in the system's PATH
local function command_exists(cmd)
  return vim.fn.executable(cmd) == 1
end

-- Determine the appropriate command based on the availability of fdfind or fd
local fd_cmd = command_exists 'fdfind' and 'fdfind' or 'fd'

-- Function to switch projects
local function project_switcher(project_dirs)
  local find_command = fd_cmd .. ' -t d -d 1 -x basename'

  local function get_projects(dirs)
    local projects = {}
    for _, projects_dir in ipairs(dirs) do
      local expanded_dir = vim.fn.expand(projects_dir)
      local command = string.format('cd %s && %s', vim.fn.shellescape(expanded_dir), find_command)
      local output = vim.fn.system(command)
      if vim.v.shell_error == 0 then
        for project in output:gmatch '[^\r\n]+' do
          local full_path = vim.fn.fnamemodify(expanded_dir .. '/' .. project, ':p')
          table.insert(projects, { name = project, path = full_path })
        end
      else
        print('Error executing command in ' .. expanded_dir)
      end
    end
    return projects
  end

  local projects = get_projects(project_dirs)

  require('fzf-lua').fzf_exec(
    vim.tbl_map(function(proj)
      return proj.name
    end, projects),
    {
      prompt = 'Project: ',
      actions = {
        ['default'] = function(selected)
          local project_name = selected[1]
          local project_path = vim.tbl_filter(function(proj)
            return proj.name == project_name
          end, projects)[1].path
          vim.cmd('cd ' .. vim.fn.fnameescape(project_path))
          print('Switched to project: ' .. project_name .. ' (' .. project_path .. ')')
        end,
      },
    }
  )
end

return {
  'ibhagwan/fzf-lua',
  config = function()
    local fzf_lua = require 'fzf-lua'
    fzf_lua.setup {
      files = {
        formatter = 'path.filename_first',
        git_icons = true,
        prompt = 'Files:',
        no_header = true,
        cwd_header = false,
        cwd_prompt = false,
      },
      grep = {
        prompt = 'Search:',
        cmd = 'rg --vimgrep',
      },
      winopts = {
        border = 'rounded',
        backdrop = 80,
      },
      keymap = {
        fzf = {
          ['ctrl-q'] = 'select-all+accept',
        },
      },
      hls = { border = 'FloatBorder' },
    }
    fzf_lua.register_ui_select()
  end,
  keys = {
    -- Use ctrl-p for finding files
    {
      '<C-P>',
      ":lua require('fzf-lua').files({ cmd = '" .. fd_cmd .. " --type f --exclude node_modules --exclude **pycache** --exclude .git --exclude target'})<CR>",
      desc = '[F]ind [F]iles',
      silent = true,
    },
    {
      '<leader>ff',
      ":lua require('fzf-lua').files({ cmd = '" .. fd_cmd .. " --type f --exclude node_modules --exclude **pycache** --exclude .git --exclude target'})<CR>",
      desc = '[F]ind [F]iles',
      silent = true,
    },
    -- Search neovim config files with sn
    {
      '<leader>fn',
      ":lua require('fzf-lua').files({ cwd = '~/.config/nvim' })<CR>",
      desc = '[F]ind [N]eovim [F]iles',
      silent = true,
    },
    -- Use fg for live grep
    {
      '<leader>fg',
      ":lua require('fzf-lua').live_grep({ multiprocess = true, silent = true })<CR>",
      desc = '[F]ind by [G]rep',
      silent = true,
    },
    -- Use ,, for live grep
    {
      ',,',
      ":lua require('fzf-lua').live_grep({ multiprocess = true, silent = true })<CR>",
      desc = 'live grep with ,,',
      silent = true,
    },
    -- Use f/ for live grep in current buffer
    {
      '<leader>f/',
      ":lua require('fzf-lua').lgrep_curbuf({ multiprocess = true, silent = true })<CR>",
      desc = '[F]ind [/] in buffer',
      silent = true,
    },
    -- Search help with sh
    {
      '<leader>fh',
      ":lua require('fzf-lua').help_tags()<CR>",
      desc = '[F]ind [H]elp',
      silent = true,
    },
    -- Use two spaces for open buffers
    {
      '<leader><leader>',
      ":lua require('fzf-lua').buffers()<CR>",
      desc = 'switch between buffers',
      silent = true,
    },
    -- Use <leader>fd for workspace diagnostics
    {
      '<leader>fd',
      ":lua require('fzf-lua').diagnostics_workspace()<CR>",
      desc = '[F]ind [D]iagnostics',
      silent = true,
    },
    -- Search current word
    {
      '<leader>fw',
      ":lua require('fzf-lua').grep_cword({silent  = true})<CR>",
      desc = '[F]ind current [W]ord',
      silent = true,
    },
    -- Resume with fr
    {
      '<leader>fr',
      ":lua require('fzf-lua').resume()<CR>",
      desc = '[F]ind [R]esume',
      silent = true,
    },
    -- Resume with ,r
    {
      ',r',
      ":lua require('fzf-lua').resume()<CR>",
      desc = '[F]ind [R]esume',
      silent = true,
    },
    -- Search old files
    {
      '<leader>f.',
      ":lua require('fzf-lua').oldfiles()<CR>",
      desc = '[F]ind Recent Files ("." for Repeat)',
      silent = true,
    },
    -- Projects
    {
      '<leader>fp',
      function()
        project_switcher { '~/work', '~/personal', '~/ideas', '~/.config' }
      end,
      desc = '[F]ind [P]rojects',
      silent = true,
    },
    -- Search git branches
    {
      '<leader>fb',
      ":lua require('fzf-lua').git_branches()<CR>",
      desc = '[F]ind [B]ranch',
      silent = true,
    },
  },
}
