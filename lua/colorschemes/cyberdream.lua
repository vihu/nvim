return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    local variant = 'default'

    require('cyberdream').setup {
      cache = false,
      transparent = true,
      italic_comments = false,
      hide_fillchars = false,
      borderless_telescope = true,
      terminal_colors = true,
      theme = {
        variant = variant,
        saturation = 1,
        highlights = {
          CursorLine = {
            bg = variant == 'light' and '#d6d6d6' or '#303030',
          },
        },
      },
      extensions = {
        alpha = false,
        blinkcmp = true,
        cmp = false,
        dashboard = false,
        fzflua = true,
        gitpad = false,
        gitsigns = true,
        grapple = false,
        grugfar = false,
        heirline = false,
        helpview = false,
        hop = false,
        indentblankline = false,
        kubectl = false,
        lazy = true,
        leap = false,
        markdown = true,
        markview = false,
        mini = true,
        noice = true,
        neogit = false,
        notify = true,
        rainbow_delimiters = false,
        snacks = false,
        telescope = true,
        treesitter = true,
        treesittercontext = true,
        trouble = true,
        whichkey = true,
      },
    }
    vim.api.nvim_command 'colorscheme cyberdream'
  end,
}
