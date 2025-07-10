local set = vim.keymap.set

-- Diagnostic keymaps
set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Control split size
set('n', '<M-,>', '<C-w>5<', { desc = 'Make bigger' })
set('n', '<M-.>', '<C-w>5>', { desc = 'Make smaller' })
set('n', '<M-t>', '<C-w>+', { desc = 'Make taller' })
set('n', '<M-s>', '<C-w>-', { desc = 'Make shorter' })

-- Save and quit with leader key
set('n', ',w', ':w!<cr>', { desc = 'Save buffer' })
set('n', ',q', ':q<cr>', { desc = 'Quit entirely' })

-- Shift + J/K moves selected lines down/up in visual Mode
set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected line down' })
set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected line up' })
-- Prevent cursor from jumping back
set('v', 'y', 'ygv<esc>', { noremap = true, silent = true, desc = 'Stop cursor from jumping back in visual mode' })

-- Clear highlight on pressing <Esc> in normal mode
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Copy current file path
set('n', '<leader>fc', function()
  require('config.utils').copyCurrentFilePath()
end, { desc = '[F]ile [C]opy path', silent = true })

-- Markdown preview with GitHub CLI
set('n', '<leader>po', function()
  require('config.utils').preview_markdown()
end, { desc = '[P]review [O]pen', silent = true })

-- Close markdown preview
set('n', '<leader>pc', function()
  require('config.utils').close_markdown_preview()
end, { desc = '[P]review [C]lose', silent = true })
