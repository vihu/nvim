return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  opts = {
    width = 128,
    fallbackOnBufferDelete = true,
    autocmds = {
      enableOnVimEnter = false,
      reloadOnColorSchemeChange = true,
    },
  },
  keys = {
    { '<leader>np', '<cmd>NoNeckPain<cr>', desc = '[N]o [N]eckpain', silent = true },
  },
}
