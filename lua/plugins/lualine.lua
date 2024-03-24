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
      lualine_b = { 'branch', 'diff' },
      lualine_c = { { 'filename', file_status = true, path = 1 } },
      lualine_y = { 'encoding', 'fileformat', 'filetype', 'progress' },
      lualine_z = {
        'location',
        'searchcount',
        {
          require('lazy.status').updates,
          cond = require('lazy.status').has_updates,
          color = { fg = '#ffffff' },
        },
      },
    },
    inactive_sections = {},
    disable_filetypes = { 'packer', 'NvimTree', 'TelescopePrompt' },
  },
}
