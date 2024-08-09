return {
  'rebelot/terminal.nvim',
  config = function()
    require('terminal').setup()

    local set = vim.keymap.set
    local term_map = require 'terminal.mappings'

    set({ 'n', 'x' }, '<leader>ts', term_map.operator_send, { expr = true, desc = 'Send selected text or motion to terminal' })
    set('n', '<leader>to', term_map.toggle, { desc = 'Toggle terminal window' })
    set('n', '<leader>tO', term_map.toggle { open_cmd = 'enew' }, { desc = 'Toggle terminal in a new buffer' })
    set('n', '<leader>tr', term_map.run, { desc = 'Run a command in terminal' })
    set('n', '<leader>tR', term_map.run(nil, { layout = { open_cmd = 'enew' } }), { desc = 'Run a command in a new terminal buffer' })
    set('n', '<leader>tq', term_map.kill, { desc = 'Kill (close) the current terminal' })
    set('n', '<leader>t]', term_map.cycle_next, { desc = 'Cycle to next terminal' })
    set('n', '<leader>t[', term_map.cycle_prev, { desc = 'Cycle to previous terminal' })
    set('n', '<leader>tl', term_map.move { open_cmd = 'belowright vnew' }, { desc = 'Move terminal to new vertical split on the right' })
    set('n', '<leader>tL', term_map.move { open_cmd = 'botright vnew' }, { desc = 'Move terminal to new vertical split on far right' })
    set('n', '<leader>th', term_map.move { open_cmd = 'belowright new' }, { desc = 'Move terminal to new horizontal split below' })
    set('n', '<leader>tH', term_map.move { open_cmd = 'botright new' }, { desc = 'Move terminal to new horizontal split at bottom' })
    set('n', '<leader>tf', term_map.move { open_cmd = 'float' }, { desc = 'Move terminal to floating window' })
    set('t', '<c-\\><c-\\>', '<c-><c-n>', { noremap = true, silent = true })
    set('t', '<c-h>', '<c-><c-n><c-w>h', { noremap = true, silent = true })
    set('t', '<c-j>', '<c-><c-n><c-w>j', { noremap = true, silent = true })
    set('t', '<c-k>', '<c-><c-n><c-w>k', { noremap = true, silent = true })
    set('t', '<c-l>', '<c-><c-n><c-w>l', { noremap = true, silent = true })
  end,
}
