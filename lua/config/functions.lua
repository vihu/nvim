---------------------------------------------------------------------
-- Utility functions and variables
---------------------------------------------------------------------

-- Functions
function Map(mode, shortcut, command, opts)
	vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

function Nmap(shortcut, command, opts)
	Map("n", shortcut, command, opts)
end

function Vmap(shortcut, command, opts)
	Map("v", shortcut, command, opts)
end

function Imap(shortcut, command, opts)
	Map("i", shortcut, command, opts)
end

function Tmap(shortcut, command, opts)
	Map("t", shortcut, command, opts)
end

function Smap(shortcut, command, opts)
	Map("s", shortcut, command, opts)
end

-- Global Variables
OPTS = { noremap = true, silent = true }
SOPTS = { noremap = true, silent = false }
