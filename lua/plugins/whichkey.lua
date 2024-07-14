return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    local wk = require 'which-key'
    wk.add {
      { '<leader>f', group = '[F]ind' },
      { '<leader>x', group = '[T]rouble' },
      { '<leader>o', group = '[O]bsidian' },
      { '<leader>g', group = '[G]it' },
      { '<leader>b', group = '[B]uffer' },
    }
  end,
}
