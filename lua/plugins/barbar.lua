return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  lazy = false,
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    sidebar_filetypes = {
      NvimTree = { text = 'File Explorer' },
    },
  },
  keys = {
    { ',bx', '<cmd>BufferCloseAllButCurrent<cr>', desc = 'buffer close others', silent = true },
    { ',bd', '<cmd>BufferClose<cr>', desc = 'buffer close', silent = true },
    { ',a', '<cmd>BufferPrevious<cr>', desc = 'buffer prev', silent = true },
    { ',s', '<cmd>BufferNext<cr>', desc = 'buffer next', silent = true },
  },
}
