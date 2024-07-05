return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  keys = {
    { '<leader>ft', ':NvimTreeToggle<CR>', desc = '[F]iletree [T]oggle', silent = true },
    { ',e', ':NvimTreeToggle<CR>', desc = '[E]xplorer', silent = true },
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
