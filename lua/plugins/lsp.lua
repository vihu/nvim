return {
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs and related tools to stdpath for Neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    'saghen/blink.cmp',

    -- Useful status updates for LSP.
    { 'j-hui/fidget.nvim', opts = { notification = { window = { winblend = 0 } } } },

    -- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    { 'folke/neodev.nvim', opts = {} },

    -- Diagnostics in the top-right corner (helix style)
    {
      'RaafatTurki/corn.nvim',
      event = 'VeryLazy',
      config = function()
        vim.diagnostic.config { virtual_text = false }
        require('corn').setup {
          border_style = 'rounded',
          item_preprocess_func = function(item)
            return item
          end,
        }
      end,
    },
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
      callback = function(event)
        local nmap = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        -- Jump to the definition of the word under your cursor.
        --  This is where a variable was first declared, or where a function is defined, etc.
        --  To jump back, press <C-t>.
        nmap('gd', function()
          require('fzf-lua').lsp_definitions()
        end, '[G]oto [D]efinition')

        -- Find references for the word under your cursor.
        nmap('gr', function()
          require('fzf-lua').lsp_references { ignore_current_line = true, includeDeclaration = false }
        end, '[G]oto [R]eferences')

        -- Jump to the implementation of the word under your cursor.
        --  Useful when your language has ways of declaring types without an actual implementation.
        nmap('gI', function()
          require('fzf-lua').lsp_implementations()
        end, '[G]oto [I]mplementation')

        -- Jump to the type of the word under your cursor.
        --  Useful when you're not sure what type a variable is and you want to see
        --  the definition of its *type*, not where it was *defined*.
        nmap('<leader>D', function()
          require('fzf-lua').lsp_typedefs()
        end, 'Type [D]efinition')

        -- Fuzzy find all the symbols in your current document.
        --  Symbols are things like variables, functions, types, etc.
        nmap('<leader>fs', function()
          require('fzf-lua').lsp_document_symbols()
        end, '[F]ind document [S]ymbols')

        -- Fuzzy find all the symbols in your current workspace.
        --  Similar to document symbols, except searches over your entire project.
        nmap('<leader>ws', function()
          require('fzf-lua').lsp_live_workspace_symbols()
        end, '[W]orkspace [S]ymbols')

        -- Rename the variable under your cursor.
        --  Most Language Servers support renaming across files, etc.
        nmap('<leader>cn', vim.lsp.buf.rename, '[C]ode [R]ename')

        -- Execute a code action, usually your cursor needs to be on top of an error
        -- or a suggestion from your LSP for this to activate.
        nmap('<leader>ca', function()
          require('fzf-lua').lsp_code_actions()
        end, '[C]ode [A]ctions')

        -- Opens a popup that displays documentation about the word under your cursor
        --  See `:help K` for why this keymap.
        nmap('K', vim.lsp.buf.hover, 'Hover Documentation')

        -- WARN: This is not Goto Definition, this is Goto Declaration.
        --  For example, in C this would take you to the header.
        nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

        -- The following two autocommands are used to highlight references of the
        -- word under your cursor when your cursor rests there for a little while.
        --    See `:help CursorHold` for information about when this is executed
        --
        -- When you move your cursor, the highlights will be cleared (the second autocommand).
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end,
    })

    -- Setup Mason first
    require('mason').setup()

    -- Install tools with Mason
    require('mason-tool-installer').setup {
      ensure_installed = {
        'stylua',
        'prettier',
        'shfmt',
        'sql-formatter',
        'zls',
        'svelte-language-server',
        'typescript-language-server',
        'ruff',
        'rust-analyzer',
        'lua-language-server',
        'gopls',
        'pylsp',
      },
    }

    --  Additional capabilities using blink
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

    -- Define server configurations
    local servers = {
      svelte = {},
      ts_ls = {},
      gopls = {},
      ruff = {
        init_options = {
          settings = {
            lineLength = 160,
          },
        },
      },
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                ignore = { 'W391', 'W503', 'E203' },
                maxLineLength = 160,
              },
            },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = 'Replace',
            },
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      },
    }

    -- Setup mason-lspconfig but exclude rust-analyzer from automatic setup
    require('mason-lspconfig').setup {
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = false,
      automatic_enable = {
        exclude = {
          'rust_analyzer',
        },
      },
      handlers = {
        -- Default handler for servers
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    }

    -- Now setup rust-analyzer with our settings
    require('lspconfig').rust_analyzer.setup {
      capabilities = capabilities,
      settings = {
        ['rust-analyzer'] = {
          cargo = {
            features = 'all',
          },
          check = {
            features = 'all',
          },
          checkOnSave = {
            command = 'clippy',
          },
          inlayHints = {
            locationLinks = false,
          },
          diagnostics = {
            disabled = { 'inactive-code' },
          },
          imports = {
            granularity = {
              group = 'Crate',
              enforce = true,
            },
            merge = {
              glob = true,
            },
          },
        },
      },
    }
  end,
}
