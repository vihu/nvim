return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',

  version = 'v0.*',
  opts = {
    completion = {
      menu = {
        border = 'single',
        auto_show = function(ctx)
          return ctx.mode ~= 'cmdline'
        end,
      },
    },
    keymap = { preset = 'default' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
  opts_extend = { 'sources.default' },
}
