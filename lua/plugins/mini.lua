return {
  'echasnovski/mini.nvim',
  config = function()
    local nmap = function(keys, func, desc)
      vim.keymap.set('n', keys, func, desc)
    end

    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    require('mini.indentscope').setup {
      options = { try_as_border = true },
    }

    -- Remove trailspaces
    require('mini.trailspace').setup {
      only_in_normal_buffers = true,
    }
    nmap('<leader>tw', ':lua MiniTrailspace.trim()<CR>', { desc = '[T]railing [W]hitespace' })

    -- Comment support
    require('mini.comment').setup {
      mappings = {
        comment = 'gc',
        comment_line = 'gcc',
        textobject = 'gc',
      },
    }

    -- Buffer remove
    require('mini.bufremove').setup()
    nmap('<leader>bd', ':lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })
    nmap(',bd', ':lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })

    -- Git diff support
    require('mini.diff').setup {
      view = {
        style = 'sign',
        signs = {
          add = '+',
          change = '~',
          delete = '_',
        },
      },
    }
    nmap('<leader>go', function()
      require('mini.diff').toggle_overlay(0)
    end, { desc = '[G]it [O]verlay' })

    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    local hipatterns = require 'mini.hipatterns'
    hipatterns.setup {
      highlighters = {
        fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
        hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
        todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
        note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
        xxx = { pattern = '%f[%w]()XXX()%f[%W]', group = 'MiniHipatternsFixme' },

        -- Highlight hex color strings (`#rrggbb`) using that color
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    }
  end,
}
