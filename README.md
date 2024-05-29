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

  Loaded (27)
    ● barbar.nvim 2.07ms  start
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.45ms  start
    ● diagflow.nvim 0.59ms  LspAttach
    ● dressing.nvim 0.52ms  VeryLazy
    ● fidget.nvim 4.31ms  nvim-lspconfig
    ● lazy.nvim 38.51ms  init.lua
    ● lsp-inlayhints.nvim 0.42ms  nvim-lspconfig
    ● lualine.nvim 17.72ms  start
    ● mason-lspconfig.nvim 0.14ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.37ms  nvim-lspconfig
    ● mason.nvim 0.1ms  nvim-lspconfig
    ● mini.nvim 2.25ms  start
    ● neodev.nvim 0.59ms  nvim-lspconfig
    ● nightfox.nvim 2.12ms  start
    ● noice.nvim 0.99ms  VeryLazy
    ● nui.nvim 0.16ms  noice.nvim
    ● nvim-colorizer.lua 1.34ms  VeryLazy
    ● nvim-lspconfig 10.93ms  start
    ● nvim-tree.lua 19.92ms  start
    ● nvim-treesitter 22.04ms  start
    ● nvim-web-devicons 0.18ms  nvim-tree.lua
    ● quickfix-reflector.vim 0.2ms  VeryLazy
    ● vim-just 0.08ms  BufReadPre
    ● vim-sleuth 0.35ms  start
    ● vim-tmux-navigator 0.16ms  start
    ● which-key.nvim 6.56ms  VimEnter

  Not Loaded (16)
    ○ blame.nvim  <leader>gb 
    ○ cmp-buffer  nvim-cmp 
    ○ cmp-path  nvim-cmp 
    ○ cmp-rg  nvim-cmp 
    ○ cmp_luasnip  nvim-cmp 
    ○ crates.nvim  rust  toml  nvim-cmp 
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh 
    ○ friendly-snippets  LuaSnip 
    ○ fzf-lua  <leader>sg  <leader>s/  <leader>sh  <leader>sd  <leader>sw  <leader>sr  <leader>s.  <leader>sn  <C-P>  <leader><leader>  <leader>sf  ,, 
    ○ lspkind.nvim  nvim-cmp 
    ○ LuaSnip  nvim-cmp 
    ○ markdown-preview.nvim  MarkdownPreviewToggle  MarkdownPreview  MarkdownPreviewStop  markdown  <leader>mp 
    ○ nvim-cmp  InsertEnter 
    ○ obsidian.nvim  markdown  <leader>nd  <leader>nw  <leader>np  <leader>no  <leader>ns  <leader>nn 
    ○ plenary.nvim  diffview.nvim  obsidian.nvim 
    ○ trouble.nvim  <leader>xs  <leader>xl  <leader>xq  <leader>xx  <leader>xb 

  Disabled (3)
    ○ bamboo.nvim 
    ○ catppuccin 
    ○ kanagawa.nvim 
```
