return {
  'catgoose/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup {
      user_default_options = {
        names = false,
      },
    }
  end,
  event = 'VeryLazy',
  lazy = true,
}
