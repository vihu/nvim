local blink = require 'blink.cmp'
return {
  cmd = { 'ocamllsp' },
  filetypes = { 'ocaml', 'menhir', 'ocamlinterface', 'ocamllex', 'reason', 'dune' },
  root_markers = { 'dune-project', 'dune', '.merlin', '.git' },
  settings = {},
  capabilities = vim.tbl_deep_extend('force', {}, vim.lsp.protocol.make_client_capabilities(), blink.get_lsp_capabilities(), {
    fileOperations = {
      didRename = true,
      willRename = true,
    },
  }),
}
