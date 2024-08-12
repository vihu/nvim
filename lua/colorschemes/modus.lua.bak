return {
  'miikanissi/modus-themes.nvim',
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    require('modus-themes').setup {
      style = 'auto',
      variant = 'default',
      transparent = true,
      dim_inactive = true,
      hide_inactive_statusline = false,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },

      on_highlights = function(highlights, _)
        highlights.LineNr = { bg = 'none' }
      end,
    }
    vim.o.background = 'dark'
    vim.cmd 'colorscheme modus'
  end,
}
