# nvim

- Uses [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) as the initial template
- Separates out plugins to separate files
- Adds some extra plugins which I personally use (obsidian, noice etc.)

## Requirements

- Install nodejs, recommended: [mise](https://github.com/jdx/mise)

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

  Loaded (40)
    ● barbar.nvim 1.55ms  start
    ● cmp-buffer 0.45ms  nvim-cmp
    ● cmp-nvim-lsp 0.03ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.35ms  nvim-cmp
    ● cmp-rg 0.39ms  nvim-cmp
    ● cmp_luasnip 3.85ms  nvim-cmp
    ● conform.nvim 0.82ms  start
    ● crates.nvim 1.14ms  nvim-cmp
    ● diagflow.nvim 0.49ms  LspAttach
    ● dressing.nvim 0.33ms  VeryLazy
    ● fidget.nvim 8.78ms  nvim-lspconfig
    ● friendly-snippets 11.61ms  LuaSnip
    ● lazy.nvim 5.06ms  init.lua
    ● lsp-inlayhints.nvim 0.27ms  nvim-lspconfig
    ● lspkind.nvim 0.07ms  nvim-cmp
    ● lualine.nvim 4.48ms  start
    ● LuaSnip 12.94ms  nvim-cmp
    ● mason-lspconfig.nvim 0.13ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.05ms  nvim-lspconfig
    ● mason.nvim 0.1ms  nvim-lspconfig
    ● mini.nvim 2.58ms  start
    ● neodev.nvim 0.47ms  nvim-lspconfig
    ● nightfox.nvim 16.39ms  start
    ● noice.nvim 1.19ms  VeryLazy
    ● nui.nvim 0.33ms  noice.nvim
    ● nvim-cmp 20.32ms 󰢱 cmp  obsidian.nvim
    ● nvim-colorizer.lua 1ms  VeryLazy
    ● nvim-lspconfig 15.09ms  start
    ● nvim-notify 0.26ms  noice.nvim
    ● nvim-tree.lua 5.77ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 2.49ms  start
    ● nvim-web-devicons 0.19ms  nvim-tree.lua
    ● obsidian.nvim 27.42ms  markdown
    ● peek.nvim 0.74ms  VeryLazy
    ● plenary.nvim 0.27ms  obsidian.nvim
    ● quickfix-reflector.vim 0.22ms  VeryLazy
    ● vim-just 0.03ms  BufReadPre
    ● vim-sleuth 0.24ms  start
    ● vim-tmux-navigator 0.16ms  start
    ● which-key.nvim 0.72ms  VeryLazy

  Not Loaded (4)
    ○ diffview.nvim  <leader>gc  <leader>gh  <leader>gd
    ○ fzf-lua  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <leader>fd  <leader>fw  <leader>fr  <leader><leader>  <leader>f.  <C-P>  ,,
    ○ grapple.nvim  <c-s>  ;
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq

  Disabled (4)
    ○ bamboo.nvim
    ○ catppuccin
    ○ kanagawa.nvim
    ○ modus-themes.nvim
```
