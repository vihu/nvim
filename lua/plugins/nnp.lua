return {
  'shortcuts/no-neck-pain.nvim',
  lazy = true,
  version = '*',
  keys = {
    { '<leader>nn', '<cmd>NoNeckPain<cr>', desc = '[N]o [N]eckpain', silent = true },
    { '<leader>nu', '<cmd>NoNeckPainWidthUp<cr>', desc = '[N]eckpain [U]p', silent = true },
    { '<leader>nd', '<cmd>NoNeckPainWidthDown<cr>', desc = '[N]eckpain [D]down', silent = true },
  },
  opts = {
    width = 124,
  },
}
