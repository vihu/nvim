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
  Total: 54 plugins

  Loaded (44)
    ● barbar.nvim 4.52ms  start
    ● catppuccin 2.41ms  start
    ● cmp-buffer 0.51ms  nvim-cmp
    ● cmp-nvim-lsp 0.06ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● cmp-path 0.43ms  nvim-cmp
    ● cmp-rg 0.5ms  nvim-cmp
    ● cmp_luasnip 1.97ms  nvim-cmp
    ● conform.nvim 0.3ms  start
    ● crates.nvim 1.92ms  nvim-cmp
    ● dressing.nvim 0.48ms  VeryLazy
    ● fidget.nvim 6.63ms  nvim-lspconfig
    ● flash.nvim 0.92ms  VeryLazy
    ● friendly-snippets 7.83ms  LuaSnip
    ● lazy.nvim 5.27ms  init.lua
    ● lsp-inlayhints.nvim 0.4ms  nvim-lspconfig
    ● lspkind.nvim 0.04ms  nvim-cmp
    ● lualine.nvim 3.47ms  start
    ● LuaSnip 8.36ms  nvim-cmp
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.92ms  nvim-lspconfig
    ● mason.nvim 0.14ms  nvim-lspconfig
    ● mini.nvim 2.28ms  start
    ● neodev.nvim 0.54ms  nvim-lspconfig
    ● noice.nvim 1.27ms  VeryLazy
    ● nui.nvim 0.25ms  noice.nvim
    ● nvim-cmp 15.15ms 󰢱 cmp  vim-dadbod-completion
    ● nvim-colorizer.lua 1.28ms  VeryLazy
    ● nvim-lspconfig 16.4ms  start
    ● nvim-notify 0.25ms  noice.nvim
    ● nvim-tree.lua 2.86ms 󰢱 nvim-tree.api  fidget.nvim
    ● nvim-treesitter 2.53ms  start
    ● nvim-web-devicons 0.16ms  barbar.nvim
    ● peek.nvim 0.58ms  VeryLazy
    ● quicker.nvim 0.38ms  start
    ● SmoothCursor.nvim 0.51ms  start
    ● terminal.nvim 0.42ms  start
    ● tiny-inline-diagnostic.nvim 2.25ms  nvim-lspconfig
    ● vim-dadbod 0.28ms  vim-dadbod-ui
    ● vim-dadbod-completion 15.93ms  vim-dadbod-ui
    ● vim-dadbod-ui 16.47ms  VeryLazy
    ● vim-just 0.09ms  BufReadPre
    ● vim-sleuth 0.31ms  start
    ● vim-tmux-navigator 0.12ms  start
    ● which-key.nvim 0.53ms  VeryLazy

  Not Loaded (5)
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <leader>f.  <leader>fp  <leader>fb  <leader>fd  ,,  <leader><leader>  ,r  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <C-P>  <leader>fw  <leader>fr
    ○ grapple.nvim  ;  <c-s>
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xq  <leader>xx  <leader>xb  <leader>xs  <leader>xl

  Disabled (5)
    ○ bamboo.nvim
    ○ gruvbox.nvim
    ○ kanagawa.nvim
    ○ modus-themes.nvim
    ○ nightfox.nvim
```
