return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {
    action = function(match, state)
      local jump = require 'flash.jump'
      local cinnamon = require 'cinnamon'
      cinnamon.scroll(function()
        jump.jump(match, state)
        jump.on_jump(state)
      end)
    end,
  },
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
  },
}
