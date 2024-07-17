return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    preset = 'helix',
    plugins = {
      marks = false,
      registers = false,
    },
    spec = {
      { '<leader>f', group = '[F]ind' },
      { '<leader>x', group = '[T]rouble' },
      { '<leader>o', group = '[O]bsidian' },
      { '<leader>g', group = '[G]it' },
      { '<leader>b', group = '[B]uffer' },
    },
  },
}
