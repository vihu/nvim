return {
  'ibhagwan/fzf-lua',
  cmd = { 'FzfLua' }, -- Lazy load on command
  keys = {
    -- Use ,, for live grep
    {
      ',,',
      function()
        require('fzf-lua').live_grep {
          multiprocess = true,
          -- Add these for better performance on large repos
          cmd = 'rg --vimgrep --smart-case --hidden --column -n',
        }
      end,
      desc = 'live grep with ,,',
      silent = true,
    },
    -- Search help with <leader>fh
    {
      '<leader>fh',
      function()
        require('fzf-lua').help_tags()
      end,
      desc = '[F]ind [H]elp',
      silent = true,
    },
    -- Use two spaces for open buffers
    {
      '<leader><leader>',
      function()
        require('fzf-lua').buffers()
      end,
      desc = 'switch between buffers',
      silent = true,
    },
    -- Resume with <leader>fr
    {
      '<leader>fr',
      function()
        require('fzf-lua').resume()
      end,
      desc = '[F]ind [R]esume',
      silent = true,
    },
  },
  config = function()
    require('fzf-lua').setup {
      grep = {
        prompt = 'Search: ',
        cmd = 'rg --vimgrep --smart-case --hidden',
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
    require('fzf-lua').register_ui_select()
  end,
}
