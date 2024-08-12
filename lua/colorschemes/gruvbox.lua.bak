return {
  'vihu/gruvbox.nvim',
  priority = 1000,
  lazy = false,
  cond = false,
  enabled = false,
  config = function()
    require('gruvbox').setup {
      terminal_colors = true,
      undercurl = false,
      underline = false,
      bold = false,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = false,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false,
      contrast = 'hard',
      palette_overrides = {},
      overrides = {},
      dim_inactive = true,
      transparent_mode = true,
    }

    vim.o.background = 'dark'
    vim.cmd 'colorscheme gruvbox'
  end,
}
