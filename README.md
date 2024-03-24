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
  Total: 44 plugins

  Loaded (40)
    ● barbar.nvim 1.89ms  start
    ● cmp-nvim-lsp 0.05ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.38ms  nvim-cmp
    ● cmp_luasnip 1.5ms  nvim-cmp
    ● conform.nvim 0.33ms  start
    ● copilot-cmp 0.45ms  nvim-cmp
    ● fidget.nvim 6.22ms  nvim-lspconfig
    ● friendly-snippets 7.37ms  LuaSnip
    ● gitsigns.nvim 0.87ms  barbar.nvim
    ● kanagawa.nvim 1.78ms  start
    ● lazy.nvim 2.34ms  init.lua
    ● lsp-inlayhints.nvim 0.33ms  nvim-lspconfig
    ● lspkind.nvim 0.02ms  nvim-cmp
    ● lualine.nvim 2.79ms  start
    ● LuaSnip 7.76ms  nvim-cmp
    ● markdown-preview.nvim 0.12ms  markdown
    ● mason-lspconfig.nvim 0.11ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.34ms  nvim-lspconfig
    ● mason.nvim 0.09ms  nvim-lspconfig
    ● mini.nvim 0.9ms  start
    ● neodev.nvim 0.43ms  nvim-lspconfig
    ● noice.nvim 1.48ms 󰢱 telescope._extensions.noice  telescope.nvim
    ● nui.nvim 0.21ms  noice.nvim
    ● nvim-cmp 10.74ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 1.63ms  VeryLazy
    ● nvim-lspconfig 10.92ms  start
    ● nvim-notify 0.23ms  noice.nvim
    ● nvim-tree.lua 4.12ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 2.14ms  start
    ● nvim-web-devicons 0.14ms  lualine.nvim
    ● obsidian.nvim 13.45ms  markdown
    ● plenary.nvim 0.2ms  obsidian.nvim
    ● quickfix-reflector.vim 0.15ms  VeryLazy
    ● telescope-fzf-native.nvim 0.23ms  telescope.nvim
    ● telescope.nvim 6.22ms  VimEnter
    ● todo-comments.nvim 0.54ms  VimEnter
    ● vim-just 0.02ms  BufReadPre
    ● vim-sleuth 0.25ms  start
    ● vim-tmux-navigator 0.08ms  start
    ● which-key.nvim 4.09ms  VimEnter

  Not Loaded (3)
    ○ copilot.lua  Copilot  InsertEnter
    ○ crates.nvim  rust  toml
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh

  Disabled (1)
    ○ catppuccin
```
