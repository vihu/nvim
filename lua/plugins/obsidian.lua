return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>ns', ':ObsidianSearch<CR>', desc = 'Search notes', silent = true },
    { '<leader>nn', ':ObsidianNew<CR>', desc = 'New note', silent = true },
    { '<leader>nd', ':ObsidianDailies<CR>', desc = 'Daily notes', silent = true },
    { '<leader>nw', ':ObsidianWorkspace<CR>', desc = 'Workspaces for notes', silent = true },
    { '<leader>np', ':ObsidianPasteImg<CR>', desc = 'Paste image in note', silent = true },
    { '<leader>no', ':ObsidianFollowLink<CR>', desc = 'Open note link', silent = true },
  },
  opts = {
    workspaces = {
      {
        name = 'work',
        path = '~/syncthing/obsidian/work',
        overrides = {
          notes_subdir = 'work',
        },
      },
      {
        name = 'personal',
        path = '~/syncthing/obsidian/personal',
        overrides = {
          notes_subdir = 'personal',
        },
      },
    },
    daily_notes = {
      folder = 'dailies',
      date_format = '%Y-%m-%d',
    },
    picker = {
      name = 'telescope.nvim',
    },
    follow_url_func = function(url)
      local open_cmd = vim.fn.has 'macunix' == 1 and 'open' or 'xdg-open'
      vim.fn.jobstart { open_cmd, url }
    end,
    ui = {
      enable = false,
    },
  },
}
