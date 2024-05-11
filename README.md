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

  Loaded (40)
    ● barbar.nvim 1.58ms  start
    ● cmp-buffer 0.58ms  nvim-cmp
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.44ms  nvim-cmp
    ● cmp-rg 0.51ms  nvim-cmp
    ● cmp_luasnip 2.49ms  nvim-cmp
    ● conform.nvim 0.41ms  start
    ● crates.nvim 3.46ms  nvim-cmp
    ● diagflow.nvim 0.86ms  LspAttach
    ● dressing.nvim 0.52ms  VeryLazy
    ● fidget.nvim 22.99ms  nvim-lspconfig
    ● friendly-snippets 10.89ms  LuaSnip
    ● fzf-lua 23.7ms  <C-P>
    ● lazy.nvim 22.96ms  init.lua
    ● lsp-inlayhints.nvim 0.46ms  nvim-lspconfig
    ● lspkind.nvim 0.06ms  nvim-cmp
    ● lualine.nvim 20.63ms  start
    ● LuaSnip 11.53ms  nvim-cmp
    ● markdown-preview.nvim 0.51ms  markdown
    ● mason-lspconfig.nvim 0.12ms  nvim-lspconfig
    ● mason-tool-installer.nvim 3.63ms  nvim-lspconfig
    ● mason.nvim 0.09ms  nvim-lspconfig
    ● mini.nvim 1.7ms  start
    ● neodev.nvim 0.54ms  nvim-lspconfig
    ● nightfox.nvim 1.71ms  start
    ● noice.nvim 0.81ms  VeryLazy
    ● nui.nvim 0.2ms  noice.nvim
    ● nvim-cmp 21.02ms 󰢱 cmp  fzf-lua
    ● nvim-colorizer.lua 2.42ms  VeryLazy
    ● nvim-lspconfig 30.77ms  start
    ● nvim-tree.lua 19.94ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 18.84ms  start
    ● nvim-web-devicons 0.25ms  nvim-tree.lua
    ● obsidian.nvim 4.68ms  markdown
    ● plenary.nvim 0.12ms 󰢱 plenary.job  crates.nvim
    ● quickfix-reflector.vim 0.21ms  VeryLazy
    ● vim-just 0.08ms  BufReadPre
    ● vim-sleuth 0.25ms  start
    ● vim-tmux-navigator 0.19ms  start
    ● which-key.nvim 6.88ms  VimEnter

  Not Loaded (3)
    ○ blame.nvim  <leader>gb 
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh 
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq 

  Disabled (3)
    ○ bamboo.nvim 
    ○ catppuccin 
    ○ kanagawa.nvim 
```
