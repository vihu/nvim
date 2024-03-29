return {
  'preservim/vimux',
  keys = {
    { '<leader>xr', ':VimuxPromptCommand<CR>', desc = 'e[X]ecute [R]un command', silent = true },
    { '<leader>xc', ':VimuxCloseRunner<CR>', desc = 'e[X]ecute [C]close runner', silent = true },
  },
  config = function()
    vim.g.VimuxOrientation = 'h'
    vim.g.VimuxHeight = '40'
  end,
}
