return {
  'saecki/crates.nvim',
  ft = { 'rust', 'toml' },
  tag = 'stable',
  config = function()
    require('crates').setup {}
  end,
}
