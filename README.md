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
  Total: 44 plugins

  Loaded (38)
    ● barbar.nvim 3.09ms  start
    ● cmp-nvim-lsp 0.07ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.5ms  nvim-cmp
    ● cmp_luasnip 3.04ms  nvim-cmp
    ● conform.nvim 0.26ms  start
    ● dressing.nvim 0.48ms  VeryLazy
    ● fidget.nvim 1.96ms  nvim-lspconfig
    ● friendly-snippets 7.1ms  LuaSnip
    ● lazy.nvim 2.5ms  init.lua
    ● lsp-inlayhints.nvim 0.43ms  nvim-lspconfig
    ● lspkind.nvim 0.05ms  nvim-cmp
    ● lualine.nvim 4.17ms  start
    ● LuaSnip 7.65ms  nvim-cmp
    ● markdown-preview.nvim 0.16ms  markdown
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.25ms  nvim-lspconfig
    ● mason.nvim 0.1ms  nvim-lspconfig
    ● mini.nvim 1.17ms  start
    ● neodev.nvim 0.49ms  nvim-lspconfig
    ● neoscroll.nvim 0.34ms  start
    ● nightfox.nvim 1.57ms  start
    ● noice.nvim 0.9ms 󰢱 telescope._extensions.noice  telescope.nvim
    ● nui.nvim 0.16ms  noice.nvim
    ● nvim-cmp 12.39ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 0.73ms  VeryLazy
    ● nvim-lspconfig 6.52ms  start
    ● nvim-tree.lua 3.26ms  start
    ● nvim-treesitter 2.4ms  start
    ● nvim-web-devicons 0.13ms  lualine.nvim
    ● obsidian.nvim 15.53ms  markdown
    ● plenary.nvim 0.22ms  telescope.nvim
    ● quickfix-reflector.vim 0.17ms  VeryLazy
    ● telescope-fzf-native.nvim 0.14ms  telescope.nvim
    ● telescope.nvim 4.48ms  VimEnter
    ● vim-just 0.05ms  BufReadPre
    ● vim-sleuth 0.22ms  start
    ● vim-tmux-navigator 0.11ms  start
    ● which-key.nvim 7.28ms  VimEnter

  Not Loaded (3)
    ○ crates.nvim  rust  toml
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ trouble.nvim  <leader>xs  <leader>xb  <leader>xx  <leader>xl  <leader>xq

  Disabled (3)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
```
