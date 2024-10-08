return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  opts = {
    width = 140,
    fallbackOnBufferDelete = true,
    autocmds = {
      enableOnVimEnter = false,
      reloadOnColorSchemeChange = true,
    },
  },
  keys = {
    { '<leader>nn', '<cmd>NoNeckPain<cr>', desc = '[N]o [N]eckpain', silent = true },
    { '<leader>nu', '<cmd>NoNeckPainWidthUp<cr>', desc = '[N]eckpain [U]p', silent = true },
    { '<leader>nd', '<cmd>NoNeckPainWidthDown<cr>', desc = '[N]eckpain [D]down', silent = true },
  },
}
