return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    'ibhagwan/fzf-lua',
  },
  keys = {
    { '<leader>po', ':LivePreview start<CR>', desc = '[P]review [O]pen', silent = true },
    { '<leader>pc', ':LivePreview close<CR>', desc = '[P]review [C]pen', silent = true },
  },
}
