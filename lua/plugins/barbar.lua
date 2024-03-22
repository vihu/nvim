return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
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
    { '<leader>bx', '<cmd>BufferCloseAllButCurrent<cr>', desc = '[B]uffer e[X]it others', silent = true },
    { ',a', '<cmd>BufferPrevious<cr>', desc = 'buffer prev', silent = true },
    { ',s', '<cmd>BufferNext<cr>', desc = 'buffer next', silent = true },
  },
}
