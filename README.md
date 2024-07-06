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

  Loaded (38)
    ● barbar.nvim 16.4ms  start
    ● cmp-buffer 0.48ms  nvim-cmp
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.34ms  nvim-cmp
    ● cmp-rg 0.4ms  nvim-cmp
    ● cmp_luasnip 2.56ms  nvim-cmp
    ● conform.nvim 0.34ms  start
    ● crates.nvim 2.18ms  nvim-cmp
    ● dressing.nvim 0.71ms  VeryLazy
    ● fidget.nvim 9.52ms  nvim-lspconfig
    ● friendly-snippets 14.2ms  LuaSnip
    ● lazy.nvim 36.14ms  init.lua
    ● lsp-inlayhints.nvim 0.46ms  nvim-lspconfig
    ● lspkind.nvim 0.03ms  nvim-cmp
    ● lualine.nvim 16.18ms  start
    ● LuaSnip 14.81ms  nvim-cmp
    ● markdown-preview.nvim 0.22ms  markdown
    ● mason-lspconfig.nvim 0.19ms  nvim-lspconfig
    ● mason-tool-installer.nvim 2.23ms  nvim-lspconfig
    ● mason.nvim 0.24ms  nvim-lspconfig
    ● mini.nvim 1.58ms  start
    ● neodev.nvim 0.72ms  nvim-lspconfig
    ● nightfox.nvim 2.21ms  start
    ● noice.nvim 1.04ms  VeryLazy
    ● nui.nvim 0.28ms  noice.nvim
    ● nvim-cmp 22.16ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 1.59ms  VeryLazy
    ● nvim-lspconfig 17.43ms  start
    ● nvim-tree.lua 5.81ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 17.83ms  start
    ● nvim-web-devicons 0.21ms  barbar.nvim
    ● obsidian.nvim 27.32ms  markdown
    ● plenary.nvim 0.27ms  obsidian.nvim
    ● quickfix-reflector.vim 0.21ms  VeryLazy
    ● vim-just 0.04ms  BufReadPre
    ● vim-sleuth 0.26ms  start
    ● vim-tmux-navigator 0.23ms  start
    ● which-key.nvim 9.14ms  VimEnter

  Not Loaded (5)
    ○ diagflow.nvim  LspAttach
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ fzf-lua  ,,  <leader>ff  <leader><leader>  <leader>fn  <leader>fg  <leader>f/  <C-P>  <leader>fd  <leader>fw  <leader>fr  <leader>f.  <leader>fh
    ○ grapple.nvim  <c-s>  ;
    ○ trouble.nvim  <leader>xs  <leader>xl  <leader>xq  <leader>xx  <leader>xb

  Disabled (4)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
    ○ modus-themes.nvim
```
