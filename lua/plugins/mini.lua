return {
  'echasnovski/mini.nvim',
  config = function()
    local set = vim.keymap.set

    -- Git support (primarily for mini.statusline)
    require('mini.git').setup {}

    -- Icons
    require('mini.icons').setup {}

    -- Tabline
    require('mini.tabline').setup {}

    -- Statusline
    require('mini.statusline').setup {}

    -- Navigate to previous buffer
    set('n', ',a', '<cmd>bprevious<CR>', { desc = 'Buffer previous', silent = true })

    -- Navigate to next buffer
    set('n', ',s', '<cmd>bnext<CR>', { desc = 'Buffer next', silent = true })

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
    set('n', '<leader>bt', ':lua MiniTrailspace.trim()<CR>', { desc = '[B]uffer [T]rim Whitespace' })

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
    set('n', '<leader>bd', ':lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })
    set('n', ',bd', ':lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })
    -- Close all buffers except the current one
    set('n', '<leader>bx', function()
      local current = vim.fn.bufnr()
      for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
        if bufnr ~= current and vim.fn.buflisted(bufnr) == 1 then
          require('mini.bufremove').delete(bufnr, false)
        end
      end
    end, { desc = '[B]uffer e[X]it others', silent = true })
    set('n', ',bx', '<leader>bx', { remap = true, desc = '[B]uffer e[X]it others', silent = true })

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
    set('n', '<leader>go', function()
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
