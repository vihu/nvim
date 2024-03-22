-- NOTE: the order of imports is important
require 'globals'
require 'opts'
require 'keymaps'
require 'autocmds'

-- NOTE: Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- Navigate between nvim and tmux seamlessly
  'christoomey/vim-tmux-navigator',
  { import = 'plugins' },
}
