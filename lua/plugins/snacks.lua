return {
  'folke/snacks.nvim',
  opts = {
    notifier = { enabled = true, timeout = 3000 },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    quickfile = { enabled = true },
    bigfile = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true },
      },
    },
  },
  keys = {
    {
      '<leader>gB',
      function()
        Snacks.gitbrowse()
      end,
      desc = '[G]it [B]rowse',
    },
    {
      '<leader>un',
      function()
        Snacks.notifier.hide()
      end,
      desc = 'Dismiss All Notifications',
    },
    {
      '<leader>gb',
      function()
        Snacks.git.blame_line()
      end,
      desc = '[G]it [B]lame',
    },
  },
}
