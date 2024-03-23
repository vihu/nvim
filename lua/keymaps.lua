local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, desc)
end

local vmap = function(keys, func, desc)
  vim.keymap.set('v', keys, func, desc)
end

-- Diagnostic keymaps
nmap('[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
nmap(']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
nmap('<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
nmap('<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
nmap('<left>', '<cmd>echo "Use h to move!!"<CR>')
nmap('<right>', '<cmd>echo "Use l to move!!"<CR>')
nmap('<up>', '<cmd>echo "Use k to move!!"<CR>')
nmap('<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
nmap('<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
nmap('<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
nmap('<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
nmap('<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Save and quit with leader key
nmap(',w', ':w!<cr>', { desc = 'Save buffer' })
nmap(',q', ':q<cr>', { desc = 'Quit entirely' })

-- Shift + J/K moves selected lines down/up in visual Mode
vmap('J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected line down' })
vmap('K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected line up' })
-- Prevent cursor from jumping back
vmap('y', 'ygv<esc>', { noremap = true, silent = true, desc = 'Stop cursor from jumping back in visual mode' })
