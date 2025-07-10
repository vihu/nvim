return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = false,
        commentStyle = { italic = false },
        functionStyle = { italic = false },
        keywordStyle = { bold = true, italic = false },
        typeStyle = { italic = false },
        transparent = true,
        dimInactive = true,
        terminalColors = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
      }

      -- setup must be called before loading
      vim.cmd [[colorscheme kanagawa-wave]]
    end,
  },
  {
    'webhooked/kanso.nvim',
    priority = 1000,
    config = function()
      require('kanso').setup {
        bold = true,
        italics = false,
        compile = false,
        undercurl = true,
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = {},
        typeStyle = {},
        transparent = true,
        dimInactive = true,
        terminalColors = true,
        overrides = function(colors)
          return {
            NotifyBackground = { bg = colors.theme.ui.bg },
          }
        end,
        background = {
          dark = 'zen',
          light = 'pearl',
        },
      }

      -- setup must be called before loading
      -- vim.cmd [[colorscheme kanso]]
    end,
  },
}
