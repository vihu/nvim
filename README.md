# nvim

## Requirements

- Install nodejs, recommended: [fnm](https://github.com/Schniz/fnm).

- Setup nodejs for neovim:

  ```bash
  $ npm install -g yarn
  $ npm install -g neovim
  ```

- Install python3, recommended: [pyenv](https://github.com/pyenv/pyenv).

- Setup python for neovim:

  ```bash
  $ mkdir -p ~/.config/pynvim
  $ cd ~/.config/pynvim
  $ pyenv local 3.10.6
  $ python3 -m venv .venv
  $ source .venv/bin/activate
  $ pip install --upgrade pip && pip install pynvim
  ```

## Checkhealth

Ignore warnings but make sure the following work:

- clipboard
- git
- python support
- nodejs support

## Output

Output of `:Lazy show`:

```bash
  Total: 46 plugins

  Loaded (42)
    ● barbar.nvim 1.92ms  start
    ● catppuccin 1.66ms  start
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.64ms  nvim-cmp
    ● cmp_luasnip 2.89ms  nvim-cmp
    ● conform.nvim 0.45ms  start
    ● copilot-cmp 0.73ms  nvim-cmp
    ● copilot.lua 2.75ms  InsertEnter
    ● fidget.nvim 6.86ms  nvim-lspconfig
    ● friendly-snippets 6.95ms  LuaSnip
    ● lazy.nvim 2.82ms  init.lua
    ● lsp-inlayhints.nvim 0.36ms  nvim-lspconfig
    ● lspkind.nvim 0.06ms  nvim-cmp
    ● lualine.nvim 3.19ms  start
    ● LuaSnip 7.6ms  nvim-cmp
    ● markdown-preview.nvim 0.16ms  markdown
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.57ms  nvim-lspconfig
    ● mason.nvim 0.08ms  nvim-lspconfig
    ● mini.nvim 1.06ms  start
    ● neodev.nvim 0.47ms  nvim-lspconfig
    ● neoscroll.nvim 0.35ms  start
    ● noice.nvim 1.11ms 󰢱 telescope._extensions.noice  telescope.nvim
    ● nui.nvim 0.21ms  noice.nvim
    ● nvim-cmp 13.11ms  InsertEnter
    ● nvim-colorizer.lua 1.2ms  VeryLazy
    ● nvim-lspconfig 12.21ms  start
    ● nvim-notify 0.19ms  noice.nvim
    ● nvim-tree.lua 4.43ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 2.2ms  start
    ● nvim-web-devicons 0.12ms  lualine.nvim
    ● obsidian.nvim 2.1ms  markdown
    ● plenary.nvim 0.29ms  telescope.nvim
    ● quickfix-reflector.vim 0.19ms  VeryLazy
    ● telescope-fzf-native.nvim 0.17ms  telescope.nvim
    ● telescope.nvim 5.72ms  VimEnter
    ● todo-comments.nvim 0.96ms  VimEnter
    ● trouble.nvim 5.72ms 󰢱 trouble  lua
    ● vim-just 0.03ms  BufReadPre
    ● vim-sleuth 0.24ms  start
    ● vim-tmux-navigator 0.19ms  start
    ● which-key.nvim 5.59ms  VimEnter

  Not Loaded (3)
    ○ crates.nvim  rust  toml
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ vimux  <leader>er  <leader>ec

  Disabled (1)
    ○ kanagawa.nvim
```
