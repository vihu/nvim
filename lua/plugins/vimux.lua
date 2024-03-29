return {
  'preservim/vimux',
  keys = {
    { '<leader>er', ':VimuxPromptCommand<CR>', desc = 'e[X]ecute [R]un command', silent = true },
    { '<leader>ec', ':VimuxCloseRunner<CR>', desc = 'e[X]ecute [C]close runner', silent = true },
  },
  config = function()
    vim.g.VimuxOrientation = 'h'
    vim.g.VimuxHeight = '40'
  end,
}
