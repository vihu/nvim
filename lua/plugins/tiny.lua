return {
  'rachartier/tiny-inline-diagnostic.nvim',
  -- NOTE: DO NOT CHANGE
  -- VeryLazy + 1000 priority seems to avoid LSP timeouts
  event = 'VeryLazy',
  priority = 1000,
  config = function()
    require('tiny-inline-diagnostic').setup {
      preset = 'classic',
      transparent_bg = true,
      transparent_cursorline = true,
    }
    vim.diagnostic.config { virtual_text = false }
  end,
}
