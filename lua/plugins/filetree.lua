return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  keys = {
    { '<leader>f', ':NvimTreeToggle<CR>', desc = '[F]iletree [T]oggle', silent = true },
    { ',e', ':NvimTreeToggle<CR>', desc = '[T]oggle [F]iletree', silent = true },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = { adaptive_size = true },
    }
  end,
}
