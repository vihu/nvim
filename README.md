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
  Total: 46 plugins

  Loaded (38)
    ● barbar.nvim 19.64ms  start
    ● cmp-buffer 0.4ms  nvim-cmp
    ● cmp-nvim-lsp 0.08ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.33ms  nvim-cmp
    ● cmp-rg 0.33ms  nvim-cmp
    ● cmp_luasnip 2.33ms  nvim-cmp
    ● conform.nvim 0.38ms  start
    ● crates.nvim 1.53ms  nvim-cmp
    ● dressing.nvim 0.81ms  VeryLazy
    ● fidget.nvim 4.67ms  nvim-lspconfig
    ● friendly-snippets 11.1ms  LuaSnip
    ● lazy.nvim 38.64ms  init.lua
    ● lsp-inlayhints.nvim 0.51ms  nvim-lspconfig
    ● lspkind.nvim 0.03ms  nvim-cmp
    ● lualine.nvim 18.3ms  start
    ● LuaSnip 11.64ms  nvim-cmp
    ● markdown-preview.nvim 0.24ms  markdown
    ● mason-lspconfig.nvim 0.14ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.76ms  nvim-lspconfig
    ● mason.nvim 0.16ms  nvim-lspconfig
    ● mini.nvim 2.36ms  start
    ● neodev.nvim 0.65ms  nvim-lspconfig
    ● nightfox.nvim 3.04ms  start
    ● noice.nvim 1.12ms  VeryLazy
    ● nui.nvim 0.23ms  noice.nvim
    ● nvim-cmp 17.8ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 1.1ms  VeryLazy
    ● nvim-lspconfig 12.11ms  start
    ● nvim-tree.lua 5.87ms  start
    ● nvim-treesitter 20.6ms  start
    ● nvim-web-devicons 0.26ms  barbar.nvim
    ● obsidian.nvim 22.5ms  markdown
    ● plenary.nvim 0.2ms  obsidian.nvim
    ● quickfix-reflector.vim 0.17ms  VeryLazy
    ● vim-just 0.06ms  BufReadPre
    ● vim-sleuth 0.34ms  start
    ● vim-tmux-navigator 0.29ms  start
    ● which-key.nvim 9.32ms  VimEnter

  Not Loaded (4)
    ○ diagflow.nvim  LspAttach
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <C-P>  <leader>fd  <leader>fw  <leader>fr  <leader>f.  ,,  <leader>fh  <leader>ff  <leader><leader>  <leader>fn  <leader>fg  <leader>f/
    ○ trouble.nvim  <leader>xb  <leader>xs  <leader>xl  <leader>xq  <leader>xx

  Disabled (4)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
    ○ modus-themes.nvim

```
