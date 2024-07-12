return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    require('which-key').setup {
      window = {
        winblend = 10,
      },
      triggers_blacklist = {
        -- Disable which-key in normal mode for these keys
        n = { "'", 'v', 'z', 'c' },
      },
    }

    -- Document existing key chains
    require('which-key').add {
      { ',b', group = '[B]uffer' },
      { ',b_', hidden = true },
      { '<leader>b', group = '[B]uffer' },
      { '<leader>b_', hidden = true },
      { '<leader>c', group = '[C]ode' },
      { '<leader>c_', hidden = true },
      { '<leader>f', group = '[F]ind' },
      { '<leader>f_', hidden = true },
      { '<leader>g', group = '[G]it' },
      { '<leader>g_', hidden = true },
      { '<leader>m', group = '[M]arkdown' },
      { '<leader>m_', hidden = true },
      { '<leader>o', group = '[O]bsidian' },
      { '<leader>o_', hidden = true },
      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>t', group = '[T]rim' },
      { '<leader>t_', hidden = true },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>w_', hidden = true },
      { '<leader>x', group = '[X]trouble' },
      { '<leader>x_', hidden = true },
    }
  end,
}
