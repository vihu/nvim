return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  lazy = true,
  opts = {
    preset = 'helix',
    plugins = {
      marks = false,
      registers = false,
    },
    spec = {
      { '<leader>f', group = '[F]ind' },
      { '<leader>x', group = '[X]ecute' },
      { '<leader>o', group = '[O]bsidian' },
      { '<leader>g', group = '[G]it' },
      { '<leader>b', group = '[B]uffer' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>n', group = '[N]eckpain' },
      { '<leader>z', group = '[Z]k' },
      { '<leader>p', group = '[P]review' },
      { '<leader>l', group = '[L]SP' },
    },
  },
}
