return {
  'NoahTheDuke/vim-just',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  ft = { 'justfile', '*.just', '.justfile', 'Justfile' },
}
