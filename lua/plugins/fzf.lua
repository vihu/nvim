-- Function to check if a command exists in the system's PATH
local function command_exists(cmd)
  return vim.fn.executable(cmd) == 1
end

-- Determine the appropriate command based on the availability of fdfind or fd
local find_cmd = command_exists 'fdfind' and 'fdfind' or 'fd'

return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup {
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
        border = 'none',
        split = 'botright new',
      },
      keymap = {
        fzf = {
          ['ctrl-q'] = 'select-all+accept',
        },
      },
      hls = { border = 'FloatBorder' },
    }
  end,
  keys = {
    -- Use ctrl-p for finding files
    {
      '<C-P>',
      ":lua require('fzf-lua').files({ cmd = '" .. find_cmd .. " --type f --exclude node_modules --exclude **pycache**' })<CR>",
      desc = '[S]earch [F]iles',
      silent = true,
    },
    {
      '<leader>sf',
      ":lua require('fzf-lua').files({ cmd = '" .. find_cmd .. " --type f --exclude node_modules --exclude **pycache**' })<CR>",
      desc = '[S]earch [F]iles',
      silent = true,
    },
    -- Search neovim config files with sn
    {
      '<leader>sn',
      ":lua require('fzf-lua').files({ cwd = '~/.config/nvim' })<CR>",
      desc = '[S]earch [N]eovim [F]iles',
      silent = true,
    },
    -- Use sg for live grep
    {
      '<leader>sg',
      ":lua require('fzf-lua').live_grep({ multiprocess = true })<CR>",
      desc = '[S]earch by [G]rep',
      silent = true,
    },
    -- Use ,, for live grep
    {
      ',,',
      ":lua require('fzf-lua').live_grep({ multiprocess = true })<CR>",
      desc = 'live grep with ,,',
      silent = true,
    },
    -- Use s/ for live grep in current buffer
    {
      '<leader>s/',
      ":lua require('fzf-lua').lgrep_curbuf({ multiprocess = true })<CR>",
      desc = '[S]earch [/] in buffer',
      silent = true,
    },
    -- Search help with sh
    {
      '<leader>sh',
      ":lua require('fzf-lua').help_tags()<CR>",
      desc = '[S]earch [H]elp',
      silent = true,
    },
    -- Use two spaces for open buffers
    {
      '<leader><leader>',
      ":lua require('fzf-lua').buffers()<CR>",
      desc = 'switch between buffers',
      silent = true,
    },
    -- Use <leader>sd for workspace diagnostics
    {
      '<leader>sd',
      ":lua require('fzf-lua').diagnostics_workspace()<CR>",
      desc = '[S]each [D]iagnostics',
      silent = true,
    },
    -- Search current word
    {
      '<leader>sw',
      ":lua require('fzf-lua').grep_cword()<CR>",
      desc = '[S]each current [W]ord',
      silent = true,
    },
    -- Search Resume
    {
      '<leader>sr',
      ":lua require('fzf-lua').live_grep_resume({multiprocess = true})<CR>",
      desc = '[S]each [R]esume',
      silent = true,
    },
    -- Search old files
    {
      '<leader>s.',
      ":lua require('fzf-lua').oldfiles()<CR>",
      desc = '[S]each Recent Files ("." for Repeat)',
      silent = true,
    },
  },
}
