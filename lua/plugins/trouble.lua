return {
  'folke/trouble.nvim',
  -- NOTE: Change when v3 is stable
  branch = 'dev',
  opts = {},
  keys = {
    { '<leader>xx', '<cmd>Trouble diagnostics toggle focus=true<cr>', desc = '[T]rouble Diagnostics' },
    { '<leader>xb', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = '[T]rouble Buffer Diagnostics' },
    { '<leader>xs', '<cmd>Trouble symbols toggle focus=false<cr>', desc = '[T]rouble Symbols' },
    { '<leader>xl', '<cmd>Trouble loclist toggle<cr>', desc = '[T]rouble Location List' },
    { '<leader>xq', '<cmd>Trouble qflist toggle<cr>', desc = '[T]rouble Quickfix List' },
  },
}
