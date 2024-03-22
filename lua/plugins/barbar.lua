return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  lazy = false,
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    sidebar_filetypes = {
      NvimTree = { text = 'File Explorer' },
    },
  },
  keys = {
    { '<leader>bdo', '<cmd>BufferCloseAllButCurrent<cr>', desc = '[B]uffer [D]elete [O]thers', silent = true },
    { '<leader>bd', '<cmd>BufferClose<cr>', desc = '[B]uffer [D]elete', silent = true },
  },
}
