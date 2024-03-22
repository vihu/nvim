return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  event = 'VeryLazy',
  opts = {
    view = {
      default = {
        layout = 'diff2_horizontal',
      },
      merge_tool = {
        layout = 'diff4_mixed',
        disable_diagnostics = true,
      },
    },
  },
  keys = {
    { '<leader>do', ':DiffviewOpen<CR>', desc = '[D]iff view open', silent = true },
    { '<leader>dc', ':DiffviewClose<CR>', desc = '[D]iff view close', silent = true },
  },
}
