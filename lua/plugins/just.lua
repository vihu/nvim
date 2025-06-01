return {
  'NoahTheDuke/vim-just',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  ft = { '\\cjustfile', '*.just', '.justfile' },
}
