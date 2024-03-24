return {
  'echasnovski/mini.nvim',
  config = function()
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
    vim.keymap.set('n', '<leader>tw', ':lua MiniTrailspace.trim()<CR>', { desc = '[T]railing [W]hitespace' })

    -- Nicer animations when moving around
    require('mini.animate').setup {
      {
        cursor = {
          timing = function(_, n)
            return 150 / n
          end,
        },
        scroll = {
          timing = function(_, n)
            return 150 / n
          end,
        },
        resize = {
          timing = function(_, n)
            return 150 / n
          end,
        },
        open = {
          timing = function(_, n)
            return 5 / n
          end,
        },
        close = {
          timing = function(_, n)
            return 5 / n
          end,
        },
      },
    }

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
    vim.keymap.set('n', '<leader>bd', ':lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })
  end,
}
