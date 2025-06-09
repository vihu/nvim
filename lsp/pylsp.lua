local blink = require 'blink.cmp'
return {
  name = 'pylsp',
  filetypes = { 'python' },
  root_markers = { '.venv' },
  cmd = { 'pylsp' },
  settings = {
    pylsp = {
      pycodestyle = {
        ignore = { 'W391', 'W503', 'E203' },
        maxLineLength = 160,
      },
    },
  },
  capabilities = vim.tbl_deep_extend('force', {}, vim.lsp.protocol.make_client_capabilities(), blink.get_lsp_capabilities(), {
    fileOperations = {
      didRename = true,
      willRename = true,
    },
  }),
}
