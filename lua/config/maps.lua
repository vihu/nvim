---------------------------------------------------------------------
-- Insert mode mappings
---------------------------------------------------------------------
Imap("<F3>", "<C-R>=strftime('%Y-%m-%d %a %I:%M %p')<CR>", OPTS)

---------------------------------------------------------------------
-- Normal Mode Mapppings
---------------------------------------------------------------------
-- Save and Quit
Nmap("<leader>w", ":w!<cr>", OPTS)
Nmap("<leader>q", ":q<cr>", OPTS)
-- Treat long lines as break lines (useful when moving around in them)
Nmap("j", "gj", OPTS)
Nmap("k", "gk", OPTS)
-- Search with Space key
Nmap("<Space>", "/", SOPTS)
-- Move around tabs
Nmap("<leader>tn", "tabnew<cr>", OPTS)
Nmap("<leader>to", "tabonly<cr>", OPTS)
Nmap("<leader>tc", "tabclose<cr>", OPTS)
Nmap("<leader>tm", "tabmove", OPTS)
Nmap("<leader>tt", "tabnext", OPTS)
-- Move around buffers
Nmap("<C-J>", "<C-W><C-J>", OPTS)
Nmap("<C-K>", "<C-W><C-K>", OPTS)
Nmap("<C-L>", "<C-W><C-L>", OPTS)
Nmap("<C-H>", "<C-W><C-H>", OPTS)
-- Resize buffers with Alt + hjkl
Nmap("<M-l>", ":vertical resize -2<CR>", OPTS)
Nmap("<M-h>", ":vertical resize +2<CR>", OPTS)
Nmap("<M-k>", ":resize -2<CR>", OPTS)
Nmap("<M-j>", ":resize +2<CR>", OPTS)
-- Keep things centered
Nmap("n", "nzzzv", OPTS)
Nmap("N", "Nzzzv", OPTS)
Nmap("J", "mzJ`z", OPTS)
-- Copy till the end of line
Nmap("Y", "yg_", OPTS)
-- Insert current datetime
Nmap("<F3>", "i<C-R>=strftime('%Y-%m-%d %a %I:%M %p')<CR><Esc>", OPTS)
-- Get current full file path
Nmap("<leader>fp", ":echo expand('%:p')<CR>", OPTS)
-- Remap Ctrl+i to Ctrl+n (Ctrl+i does not work with vim)
Nmap("<C-n>", "<C-i>", SOPTS)
-- Remap q -> qq (record macro)
Nmap("q", "<nop>", SOPTS)
Nmap("qq", "q", SOPTS)
-- Map Ctrl+l to clear highlights
Nmap("<leader>l", ":noh<CR>", SOPTS)
-- -- Press enter in normal mode to insert a blank new line below
-- vim.keymap.set('n', '<CR>', '@="m`o<C-V><Esc>``"<CR>')
-- -- Press shift+enter in normal mode to insert a blank new line above
-- vim.keymap.set('n', '<S-CR>', '@="m`O<C-V><Esc>``"<CR>')

---------------------------------------------------------------------
-- Visual mode mappings
---------------------------------------------------------------------
-- Shift + J/K moves selected lines down/up in visual Mode
Vmap("J", ":m '>+1<CR>gv=gv", OPTS)
Vmap("K", ":m '<-2<CR>gv=gv", OPTS)
