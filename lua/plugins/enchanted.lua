return {
  'otavioschwanck/fzf-lua-enchanted-files',
  dependencies = { 'ibhagwan/fzf-lua' },
  config = function()
    -- Modern configuration using vim.g
    vim.g.fzf_lua_enchanted_files = {
      max_history_per_cwd = 50,
    }
  end,
}
