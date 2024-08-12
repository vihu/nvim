return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  keys = {
    { ',e', ':NvimTreeToggle<CR>', desc = '[E]xplorer', silent = true },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        adaptive_size = true,
        float = {
          enable = true,
          open_win_config = { height = 30, width = 30 },
        },
      },
    }
  end,
}
