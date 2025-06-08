return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  lazy = true,
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup {
      app = 'browser',
    }

    local api = vim.api
    api.nvim_create_user_command('PeekOpen', require('peek').open, {})
    api.nvim_create_user_command('PeekClose', require('peek').close, {})
    api.nvim_set_keymap('n', '<leader>po', '<Cmd>PeekOpen<CR>', { desc = '[P]eek [O]pen' })
    api.nvim_set_keymap('n', '<leader>pc', '<Cmd>PeekClose<CR>', { desc = '[P]eek [C]lose' })
  end,
}
