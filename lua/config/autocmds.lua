local api = vim.api

-- Don't auto comment new line
api.nvim_create_autocmd('BufEnter', { command = [[set formatoptions-=cro]] })

-- On LspAttach
api.nvim_create_autocmd('LspAttach', {
  group = api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    local nmap = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = desc, silent = true })
    end

    -- With fzf-lua
    nmap('gd', function()
      require('fzf-lua').lsp_definitions()
    end, '[G]oto [D]efinition')
    nmap('gr', function()
      require('fzf-lua').lsp_references { ignore_current_line = true, includeDeclaration = false }
    end, '[G]oto [R]eferences')
    nmap('gI', function()
      require('fzf-lua').lsp_implementations()
    end, '[G]oto [I]mplementation')
    nmap('<leader>D', function()
      require('fzf-lua').lsp_typedefs()
    end, 'Type [D]efinition')

    -- LSP helpers
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('gl', vim.diagnostic.open_float, 'Open Diagnostic Float')
    nmap('gs', vim.lsp.buf.signature_help, 'Signature Documentation')

    -- LSP: Workspace specific
    nmap('<leader>ws', function()
      require('fzf-lua').lsp_live_workspace_symbols()
    end, '[W]orkspace [S]ymbols')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd dir')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove dir')
    nmap('<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist dirs')

    -- LSP: Code actions
    nmap('<leader>la', function()
      require('fzf-lua').lsp_code_actions()
    end, '[L]SP Code Actions')
    nmap('<leader>lr', vim.lsp.buf.rename, '[L]SP Rename')
    nmap('<leader>lf', vim.lsp.buf.format, '[L]SP Format')
    nmap('<leader>ls', vim.lsp.buf.signature_help, '[L]SP Signature Help')
    nmap('<leader>ld', vim.diagnostic.open_float, '[L]SP Diagnostics')
    nmap('<leader>lc', function()
      require('config.utils').copyFilePathAndLineNumber()
    end, '[L]SP Copy path and line')

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
      nmap('<leader>li', function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
      end, '[L]SP [I]nlay Hints')
    end
  end,
})

-- Wrap words "softly" (no carriage return) in mail buffer
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

-- Go to last loc when opening a buffer
api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local mark = api.nvim_buf_get_mark(0, '"')
    local lcount = api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Show cursor line only in active window
local cursorGrp = api.nvim_create_augroup('CursorLine', { clear = true })
api.nvim_create_autocmd({ 'InsertLeave', 'WinEnter' }, {
  pattern = '*',
  command = 'set cursorline',
  group = cursorGrp,
})
api.nvim_create_autocmd({ 'InsertEnter', 'WinLeave' }, { pattern = '*', command = 'set nocursorline', group = cursorGrp })

-- Resize neovim split when terminal is resized
api.nvim_command 'autocmd VimResized * wincmd ='

-- Fix terraform and hcl comment string
api.nvim_create_autocmd('FileType', {
  group = api.nvim_create_augroup('FixTerraformCommentString', { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = '# %s'
  end,
  pattern = { 'terraform', 'hcl' },
})

-- Start treesitter explicitly
api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
