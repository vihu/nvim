return {
  'elixir-tools/elixir-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('elixir').setup {
      nextls = { enable = true },
      elixirls = { enable = false },
      projectionist = { enable = true },
    }
  end,
}
