local opt = vim.opt
local cmd = vim.cmd
local api = vim.api

---------------------------------------------------------------------
-- Common options
---------------------------------------------------------------------

-- Needed for indent-blankline
opt.list = true
-- Set line number
opt.number = true
-- Don't set swapfile
opt.swapfile = false
-- Set ruler
opt.ruler = true
-- Set hidden
opt.hidden = true
-- No backup files
opt.backup = false
-- No write backup
opt.writebackup = false
-- Don't fold
opt.foldenable = false
-- Set encoding
opt.encoding = "utf-8"
-- Remove BOM marker
opt.bomb = false
-- Enable auto indentation
opt.autoindent = true
-- Make backspace behave properly
opt.backspace = { "eol", "start", "indent" }
-- Set proper code wrapping
cmd("set whichwrap+=<,>,[,],h,l")
-- Allow access to system clipboard
opt.clipboard:append("unnamedplus")
-- Enable mouse support
opt.mouse:append("a")
-- Ignore case when searching
opt.ignorecase = true
-- Enable smart case
opt.smartcase = true
-- Show search highlights
opt.hlsearch = true
-- Search incrementally
opt.incsearch = true
-- Make nvim load faster
opt.lazyredraw = true
-- Fix regex matching
opt.magic = true
-- Show matching bracket briefly
opt.showmatch = true
-- Set match
opt.mat = 2
-- Split hz below
opt.splitbelow = true
-- Split vertically right
opt.splitright = true
-- Fix tabs
opt.tabstop = 4
-- Fix width
opt.shiftwidth = 4
-- Fix soft tabs
opt.softtabstop = 4
-- Use spaces as tabs
opt.expandtab = true
-- Show cursorline
opt.cursorline = true
-- Render `` in markdown without concealment
opt.conceallevel = 0
-- Scroll when 10 lines are remaining
opt.scrolloff = 10
-- Use relative line numbers
opt.relativenumber = false
-- Faster completion
opt.updatetime = 250
-- No need to show mode every time
opt.showmode = true
-- Always display full one line
opt.wrap = false
-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
opt.completeopt = { "menuone", "noinsert", "noselect" }
-- Avoid showing extra messages when using completion
opt.shortmess:append("c")
-- Have a fixed column for the diagnostics to appear in this
-- removes the jitter when warnings/errors flow in
opt.signcolumn = "yes"
-- Set termguicolors
opt.termguicolors = true
-- Disable commandline
opt.ch = 0
-- Allow global statusline
opt.ls = 3
-- Pretty print json
cmd([[
    syntax enable
    com! Fmtjson %!python -m json.tool
]])
-- Set textwidth for some files
api.nvim_command("au BufRead,BufNewFile *.erl set textwidth=120")
api.nvim_command("au BufRead,BufNewFile *.md set textwidth=80")
api.nvim_command("au BufRead,BufNewFile *.py set textwidth=79")

-- Hide quickfix buffer after selecting an entry and pressing Enter key
api.nvim_create_autocmd("FileType", {
    pattern = "qf",
    command = "nnoremap <buffer> <CR> <CR>:cclose<CR>",
})

-- Highlight yanked text for 200ms using the "Visual" highlight group
api.nvim_create_augroup("highlight_yank", {})
api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    group = "highlight_yank",
    command = "silent! lua vim.highlight.on_yank({higroup='Visual', timeout=200})",
})

-- Global diagnostic config
vim.diagnostic.config({
    virtual_text = false,
})

vim.g.python3_host_prog = vim.fn.expand("$HOME/.pyenv/versions/pynvim/bin/python")
vim.g.node_host_prog = vim.fn.expand("$HOME/.npm-global/bin/neovim-node-host")
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
