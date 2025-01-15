return {
  'folke/snacks.nvim',
  config = function()
    require('snacks').setup {
      scroll = { enabled = true },
      notifier = { enabled = true, timeout = 3000 },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      quickfile = { enabled = true },
      bigfile = { enabled = true },
    }

    vim.keymap.set('n', '<leader>gb', function()
      Snacks.git.blame_line()
    end, { noremap = true, silent = false, desc = '[G]it [B]lame' })
    vim.keymap.set('n', '<leader>gB', function()
      Snacks.gitbrowse()
    end, { noremap = true, silent = false, desc = '[G]it [B]rowse' })
    vim.keymap.set('n', '<leader>nh', function()
      Snacks.notifier.hide()
    end, { noremap = true, silent = false, desc = '[N]otification [H]ide' })
  end,
}
