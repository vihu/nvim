return {
  'ribru17/bamboo.nvim',
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      style = 'vulgaris',
      transparent = true,
      dim_inactive = true,
      lualine = {
        transparent = true,
      },
      code_style = {
        comments = { italic = false },
        conditionals = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        namespaces = { italic = false },
        parameters = { italic = false },
        strings = { italic = false },
        variables = { italic = false },
      },
    }
    require('bamboo').load()
  end,
}
