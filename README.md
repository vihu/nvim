# nvim

- Uses [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) as the initial template
- Separates out plugins to separate files
- Adds some extra plugins which I personally use (obsidian, noice etc.)

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
  Total: 47 plugins

  Loaded (37)
    ● barbar.nvim 1.28ms  start
    ● cmp-nvim-lsp 0.03ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.38ms  nvim-cmp
    ● cmp-rg 0.4ms  nvim-cmp
    ● cmp_luasnip 1.25ms  nvim-cmp
    ● conform.nvim 0.31ms  start
    ● crates.nvim 1.92ms  nvim-cmp
    ● dressing.nvim 0.43ms  VeryLazy
    ● fidget.nvim 1.77ms  nvim-lspconfig
    ● friendly-snippets 3.83ms  LuaSnip
    ● lazy.nvim 2.53ms  init.lua
    ● lsp-inlayhints.nvim 0.4ms  nvim-lspconfig
    ● lspkind.nvim 0.03ms  nvim-cmp
    ● lualine.nvim 2.47ms  start
    ● LuaSnip 5.18ms  nvim-cmp
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.16ms  nvim-lspconfig
    ● mason.nvim 0.09ms  nvim-lspconfig
    ● mini.nvim 1.46ms  start
    ● neodev.nvim 0.49ms  nvim-lspconfig
    ● neoscroll.nvim 0.25ms  start
    ● nightfox.nvim 1.54ms  start
    ● noice.nvim 0.64ms 󰢱 telescope._extensions.noice  telescope.nvim
    ● nui.nvim 0.14ms  noice.nvim
    ● nvim-cmp 10.11ms  InsertEnter
    ● nvim-colorizer.lua 0.61ms  VeryLazy
    ● nvim-lspconfig 6.36ms  start
    ● nvim-tree.lua 4.87ms  start
    ● nvim-treesitter 2.03ms  start
    ● nvim-web-devicons 0.12ms  lualine.nvim
    ● plenary.nvim 0.17ms  telescope.nvim
    ● quickfix-reflector.vim 0.15ms  VeryLazy
    ● telescope-fzf-native.nvim 0.15ms  telescope.nvim
    ● telescope.nvim 3.05ms  VimEnter
    ● vim-sleuth 0.24ms  start
    ● vim-tmux-navigator 0.09ms  start
    ● which-key.nvim 5.05ms  VimEnter

  Not Loaded (7)
    ○ blame.nvim  <leader>gb
    ○ diagflow.nvim  LspAttach
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ markdown-preview.nvim  markdown  MarkdownPreview  MarkdownPreviewStop  MarkdownPreviewToggle  <leader>mp
    ○ obsidian.nvim  markdown  <leader>nd  <leader>np  <leader>no  <leader>ns  <leader>nn  <leader>nw
    ○ trouble.nvim  <leader>xs  <leader>xb  <leader>xx  <leader>xl  <leader>xq
    ○ vim-just  .justfile  \cjustfile  *.just  BufReadPre  BufNewFile

  Disabled (3)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
```
