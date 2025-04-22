return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup {
      app = 'browser',
    }
    vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
    vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    vim.api.nvim_set_keymap('n', '<leader>po', '<Cmd>PeekOpen<CR>', { desc = '[P]eek [O]pen' })
    vim.api.nvim_set_keymap('n', '<leader>pc', '<Cmd>PeekClose<CR>', { desc = '[P]eek [C]lose' })
  end,
}
