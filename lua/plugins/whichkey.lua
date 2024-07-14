return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    preset = 'helix',
    spec = {
      { '<leader>f', group = '[F]ind' },
      { '<leader>x', group = '[T]rouble' },
      { '<leader>o', group = '[O]bsidian' },
      { '<leader>g', group = '[G]it' },
      { '<leader>b', group = '[B]uffer' },
    },
  },
}
