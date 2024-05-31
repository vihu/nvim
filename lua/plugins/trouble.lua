return {
  'folke/trouble.nvim',
  opts = {},
  keys = {
    { '<leader>xx', '<cmd>Trouble diagnostics toggle focus=true<cr>', desc = '[T]rouble Diagnostics', silent = true },
    { '<leader>xb', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = '[T]rouble Buffer Diagnostics', silent = true },
    { '<leader>xs', '<cmd>Trouble symbols toggle focus=false<cr>', desc = '[T]rouble Symbols', silent = true },
    { '<leader>xl', '<cmd>Trouble loclist toggle<cr>', desc = '[T]rouble Location List', silent = true },
    { '<leader>xq', '<cmd>Trouble qflist toggle<cr>', desc = '[T]rouble Quickfix List', silent = true },
  },
}
