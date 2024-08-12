return {
  'catppuccin/nvim',
  lazy = false,
  enabled = true,
  priority = 1000,
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup {
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      term_colors = true,
      no_italic = true,
      no_underline = true,
      no_bold = true,
      styles = {
        comments = {},
        conditionals = {},
        loops = { 'bold' },
        functions = { 'bold' },
        keywords = { 'bold' },
        strings = {},
        variables = {},
        numbers = { 'bold' },
        booleans = { 'bold' },
        properties = {},
        types = { 'bold' },
        operators = {},
      },
      transparent_background = true,
      show_end_of_buffer = false,
      dim_inactive = {
        enabled = true,
        shade = 'dark',
        percentage = 0.05,
      },
      integrations = {
        barbar = true,
        cmp = true,
        diffview = true,
        fidget = true,
        flash = true,
        fzf = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = {
          enabled = false,
          indentscope_color = '',
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
          },
          inlay_hints = {
            background = true,
          },
        },
        notify = true,
        noice = true,
        nvimtree = true,
        treesitter = true,
        which_key = true,
      },
      custom_highlights = function(colors)
        return {
          NvimTreeNormalNC = { bg = colors.mantle },
        }
      end,
    }

    vim.o.background = 'dark'
    vim.api.nvim_command 'colorscheme catppuccin'
  end,
}
