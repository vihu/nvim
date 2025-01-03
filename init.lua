-- NOTE: the order of imports is important
require 'config.globals'
require 'config.opts'
require 'config.keymaps'
require 'config.autocmds'

-- NOTE: Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup {
  { import = 'colorschemes' },
  { import = 'plugins' },
}
