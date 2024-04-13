return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },

    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },

    -- Show recently selected search items first by default
    {
      'prochri/telescope-all-recent.nvim',
      dependencies = {
        'kkharji/sqlite.lua',
      },
      opts = {},
    },
  },
  config = function()
    require('telescope').setup {}

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'noice')

    local nmap = function(keys, func, desc)
      vim.keymap.set('n', keys, func, desc)
    end

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    local theme = function(args)
      return require('telescope.themes').get_ivy(args)
    end

    -- Search documentation
    nmap('<leader>sh', function()
      builtin.help_tags(theme { winblend = 10 })
    end, { desc = '[S]earch [H]elp' })

    -- Search keymaps
    nmap('<leader>sk', function()
      builtin.keymaps(theme { winblend = 10 })
    end, { desc = '[S]earch [K]eymaps' })

    -- Search files
    nmap('<leader>sf', function()
      builtin.find_files(theme { winblend = 10 })
    end, { desc = '[S]earch [F]iles' })

    -- Search files with Ctrl-P
    nmap('<c-p>', function()
      builtin.find_files(theme { winblend = 10 })
    end, { desc = '[S]earch [F]iles' })

    -- Search select telescope
    nmap('<leader>ss', function()
      builtin.builtin(theme { winblend = 10 })
    end, { desc = '[S]earch [S]elect Telescope' })

    -- Search current word
    nmap('<leader>sw', function()
      builtin.grep_string(theme { winblend = 10 })
    end, { desc = '[S]earch current [W]ord' })

    -- Search with live grep
    nmap('<leader>sg', function()
      builtin.live_grep(theme { winblend = 10 })
    end, { desc = '[S]earch by [G]rep' })

    -- Search with live grep using ,,
    nmap(',,', function()
      builtin.live_grep(theme { winblend = 10 })
    end, { desc = '[S]earch (live grep)' })

    -- Search diagnostics
    nmap('<leader>sd', function()
      builtin.diagnostics(theme { winblend = 10 })
    end, { desc = '[S]earch [D]iagnostics' })

    -- Search resume from previous search
    nmap('<leader>sr', function()
      builtin.resume(theme { winblend = 10 })
    end, { desc = '[S]earch [R]esume' })

    -- Search recent files
    nmap('<leader>s.', function()
      builtin.oldfiles(theme { winblend = 10 })
    end, { desc = '[S]earch Recent Files ("." for repeat)' })

    -- Search open buffers
    nmap('<leader><leader>', function()
      builtin.buffers(theme { winblend = 10 })
    end, { desc = '[ ] Find existing buffers' })

    -- Fuzzy search in current buffer (without preview)
    nmap('<leader>/', function()
      builtin.current_buffer_fuzzy_find(theme {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- Search in open files
    nmap('<leader>s/', function()
      builtin.live_grep(theme {
        winblend = 10,
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      })
    end, { desc = '[S]earch [/] in Open Files' })

    -- Search neovim config files
    nmap('<leader>sn', function()
      builtin.find_files(theme { cwd = vim.fn.stdpath 'config', winblend = 10 })
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
