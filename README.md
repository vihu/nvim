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

- Setup deno

  ```bash
  $ cargo install deno --locked
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
  Total: 48 plugins

  Loaded (41)
    ● barbar.nvim 2.17ms  start
    ● cmp-buffer 0.53ms  nvim-cmp
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.5ms  nvim-cmp
    ● cmp-rg 0.45ms  nvim-cmp
    ● cmp_luasnip 2.95ms  nvim-cmp
    ● conform.nvim 0.26ms  start
    ● crates.nvim 2.67ms  nvim-cmp
    ● diagflow.nvim 0.58ms  LspAttach
    ● dressing.nvim 0.41ms  VeryLazy
    ● fidget.nvim 1.73ms  nvim-lspconfig
    ● friendly-snippets 9.37ms  LuaSnip
    ● fzf-lua 7.34ms  <C-P>
    ● lazy.nvim 4.24ms  init.lua
    ● lsp-inlayhints.nvim 0.3ms  nvim-lspconfig
    ● lspkind.nvim 0.11ms  nvim-cmp
    ● lualine.nvim 4.2ms  start
    ● LuaSnip 10.24ms  nvim-cmp
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.74ms  nvim-lspconfig
    ● mason.nvim 0.1ms  nvim-lspconfig
    ● mini.nvim 2.16ms  start
    ● neodev.nvim 0.46ms  nvim-lspconfig
    ● nightfox.nvim 1.57ms  start
    ● noice.nvim 1.37ms  VeryLazy
    ● nui.nvim 0.21ms  noice.nvim
    ● nvim-cmp 19.81ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 2.02ms  VeryLazy
    ● nvim-lspconfig 6.89ms  start
    ● nvim-notify 0.21ms  noice.nvim
    ● nvim-tree.lua 5.37ms  start
    ● nvim-treesitter 2.71ms  start
    ● nvim-web-devicons 0.16ms  nvim-tree.lua
    ● obsidian.nvim 25.16ms  markdown
    ● peek.nvim 0.56ms  VeryLazy
    ● plenary.nvim 0.26ms  obsidian.nvim
    ● quickfix-reflector.vim 0.16ms  VeryLazy
    ● vim-just 0.06ms  BufReadPre
    ● vim-sleuth 0.22ms  start
    ● vim-tmux-navigator 0.17ms  start
    ● which-key.nvim 0.47ms  VeryLazy

  Not Loaded (3)
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ grapple.nvim  <c-s>  ;
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq

  Disabled (4)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
    ○ modus-themes.nvim
```
