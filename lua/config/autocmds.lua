local api = vim.api

-- don't auto comment new line
api.nvim_create_autocmd('BufEnter', { command = [[set formatoptions-=cro]] })

-- On LspAttach
api.nvim_create_autocmd('LspAttach', {
  group = api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    local nmap = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    -- Core LSP keymaps using fzf-lua (no leader prefix)
    nmap('gd', function()
      require('fzf-lua').lsp_definitions()
    end, '[G]oto [D]efinition')

    nmap('gr', function()
      require('fzf-lua').lsp_references { ignore_current_line = true, includeDeclaration = false }
    end, '[G]oto [R]eferences')

    nmap('gI', function()
      require('fzf-lua').lsp_implementations()
    end, '[G]oto [I]mplementation')

    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('gl', vim.diagnostic.open_float, 'Open Diagnostic Float')
    nmap('gs', vim.lsp.buf.signature_help, 'Signature Documentation')

    -- Type definition under <leader>D (not in a specific group)
    nmap('<leader>D', function()
      require('fzf-lua').lsp_typedefs()
    end, 'Type [D]efinition')

    -- Under <leader>f (Find) - document symbols
    nmap('<leader>fs', function()
      require('fzf-lua').lsp_document_symbols()
    end, '[F]ind document [S]ymbols')

    -- Under <leader>w (Workspace) - workspace symbols
    nmap('<leader>ws', function()
      require('fzf-lua').lsp_live_workspace_symbols()
    end, '[W]orkspace [S]ymbols')

    -- Under <leader>c (Code) - code actions and rename
    nmap('<leader>ca', function()
      require('fzf-lua').lsp_code_actions()
    end, '[C]ode [A]ctions')

    nmap('<leader>cn', vim.lsp.buf.rename, '[C]ode Re[n]ame')

    -- Special keymaps
    nmap('<leader>v', '<cmd>vsplit | lua vim.lsp.buf.definition()<cr>', 'Goto Definition in Vertical Split')

    -- Register LSP-specific mappings with which-key
    local ok, wk = pcall(require, 'which-key')
    if ok then
      wk.add {
        -- LSP group mappings (using <leader>l prefix)
        -- These are additional LSP-specific commands that don't fit in other groups
        {
          '<leader>la',
          function()
            require('fzf-lua').lsp_code_actions()
          end,
          desc = 'LSP Code Actions',
          buffer = event.buf,
        },
        { '<leader>lr', vim.lsp.buf.rename, desc = 'LSP Rename', buffer = event.buf },
        { '<leader>lf', vim.lsp.buf.format, desc = 'LSP Format', buffer = event.buf },
        { '<leader>ls', vim.lsp.buf.signature_help, desc = 'LSP Signature Help', buffer = event.buf },
        { '<leader>ld', vim.diagnostic.open_float, desc = 'LSP Diagnostics', buffer = event.buf },
        {
          '<leader>lc',
          function()
            require('config.utils').copyFilePathAndLineNumber()
          end,
          desc = 'Copy File Path and Line Number',
          buffer = event.buf,
        },

        -- Workspace folder management (capital W)
        { '<leader>Wa', vim.lsp.buf.add_workspace_folder, desc = 'Add Workspace Folder', buffer = event.buf },
        { '<leader>Wr', vim.lsp.buf.remove_workspace_folder, desc = 'Remove Workspace Folder', buffer = event.buf },
        {
          '<leader>Wl',
          function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end,
          desc = 'List Workspace Folders',
          buffer = event.buf,
        },
      }
    end

    -- Document highlight support
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end

    -- Inlay hints toggle - under <leader>t (Toggle)
    if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
      nmap('<leader>ti', function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
      end, '[T]oggle [I]nlay Hints')
    end
  end,
})

-- wrap words "softly" (no carriage return) in mail buffer
api.nvim_create_autocmd('Filetype', {
  pattern = 'mail',
  callback = function()
    vim.opt.textwidth = 0
    vim.opt.wrapmargin = 0
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.columns = 80
    vim.opt.colorcolumn = '80'
  end,
})

-- Highlight on yank
api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- go to last loc when opening a buffer
-- this mean that when you open a file, you will be at the last position
api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local mark = api.nvim_buf_get_mark(0, '"')
    local lcount = api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup('CursorLine', { clear = true })
api.nvim_create_autocmd({ 'InsertLeave', 'WinEnter' }, {
  pattern = '*',
  command = 'set cursorline',
  group = cursorGrp,
})
api.nvim_create_autocmd({ 'InsertEnter', 'WinLeave' }, { pattern = '*', command = 'set nocursorline', group = cursorGrp })

-- resize neovim split when terminal is resized
api.nvim_command 'autocmd VimResized * wincmd ='

-- fix terraform and hcl comment string
api.nvim_create_autocmd('FileType', {
  group = api.nvim_create_augroup('FixTerraformCommentString', { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = '# %s'
  end,
  pattern = { 'terraform', 'hcl' },
})

api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
