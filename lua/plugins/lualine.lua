return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = '|',
      section_separators = { left = '', right = '' },
    },
    extensions = {
      'nvim-tree',
      'quickfix',
      'lazy',
      'mason',
    },
    globalstatus = true,
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location', 'searchcount' },
    },
    inactive_sections = {},
    disable_filetypes = { 'Lazy', 'NvimTree', 'TelescopePrompt' },
  },
}
