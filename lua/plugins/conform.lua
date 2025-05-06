return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      javascript = { 'deno_fmt' },
      typescript = { 'deno_fmt' },
      javascriptreact = { 'prettier' },
      svelte = { 'deno_fmt' },
      typescriptreact = { 'prettier' },
      css = { 'deno_fmt' },
      html = { 'deno_fmt' },
      json = { 'deno_fmt' },
      yaml = { 'prettier' },
      markdown = { 'prettier' },
      lua = { 'stylua' },
      sql = { 'sql_formatter' },
      python = {
        -- To fix auto-fixable lint errors.
        'ruff_fix',
        -- To run the Ruff formatter.
        'ruff_format',
        -- To organize the imports.
        'ruff_organize_imports',
      },
      sh = { 'shfmt' },
      proto = { 'buf' },
    },
  },
}
