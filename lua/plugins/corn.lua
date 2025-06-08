return {
  'RaafatTurki/corn.nvim',
  event = 'LspAttach',
  config = function()
    vim.diagnostic.config { virtual_text = false }
    require('corn').setup {
      border_style = 'rounded',
      item_preprocess_func = function(item)
        return item
      end,
    }
  end,
}
