return {
  'vihu/nightfox.nvim',
  branch = 'rg/fixup-blink-cmp-ghost-text',
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    require('nightfox').setup {
      options = {
        compile_path = vim.fn.stdpath 'cache' .. '/nightfox',
        compile_file_suffix = '_compiled',
        transparent = true,
        terminal_colors = true,
        dim_inactive = true,
        module_default = true,
      },
    }

    vim.cmd 'colorscheme nightfox'
  end,
}
