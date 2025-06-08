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
}
