return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  opts = {
    view = {
      default = {
        layout = 'diff2_vertical',
      },
      merge_tool = {
        layout = 'diff4_mixed',
        disable_diagnostics = true,
      },
    },
  },
  keys = {
    { '<leader>gd', ':DiffviewOpen<CR>', desc = '[G]it [D]iff', silent = true },
    { '<leader>gc', ':DiffviewClose<CR>', desc = '[G]it [C]lose diff', silent = true },
    { '<leader>gh', ':DiffviewFileHistory %<CR>', desc = '[G]it [H]istory', silent = true },
  },
}
