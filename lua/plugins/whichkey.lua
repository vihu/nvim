return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    require('which-key').setup {
      window = {
        winblend = 40,
      },
      triggers_blacklist = {
        -- Disable which-key in normal mode for these keys
        n = { "'", 'v', 'z', 'c' },
      },
    }

    -- Document existing key chains
    require('which-key').register {
      ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['<leader>n'] = { name = '[N]otes', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]rim', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = 'e[X]ecute', _ = 'which_key_ignore' },
      [',b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
    }
  end,
}
