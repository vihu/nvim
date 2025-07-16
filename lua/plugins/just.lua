return {
  'NoahTheDuke/vim-just',
  event = { 'BufReadPre', 'BufNewFile' },
  ft = { 'justfile', '*.just', '.justfile', 'Justfile' },
}
