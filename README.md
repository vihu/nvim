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
  Total: 45 plugins

  Loaded (27)
    ● catppuccin 2.35ms  start
    ● cmp-nvim-lsp 0.05ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.3ms  start
    ● fidget.nvim 3.13ms  nvim-lspconfig
    ● flash.nvim 0.85ms  VeryLazy
    ● lazy.nvim 4.78ms  init.lua
    ● lsp-inlayhints.nvim 0.27ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.09ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.76ms  nvim-lspconfig
    ● mason.nvim 0.11ms  nvim-lspconfig
    ● mini.nvim 2.27ms  start
    ● neodev.nvim 0.65ms  nvim-lspconfig
    ● noice.nvim 1.04ms  VeryLazy
    ● nui.nvim 0.16ms  noice.nvim
    ● nvim-colorizer.lua 1.02ms  VeryLazy
    ● nvim-lspconfig 10.07ms  start
    ● nvim-notify 0.16ms  noice.nvim
    ● nvim-tree.lua 6.23ms  start
    ● nvim-treesitter 3.59ms  start
    ● nvim-web-devicons 0.17ms  nvim-tree.lua
    ● peek.nvim 0.45ms  VeryLazy
    ● quicker.nvim 0.24ms  start
    ● tiny-inline-diagnostic.nvim 1.41ms  nvim-lspconfig
    ● vim-just 0.06ms  BufReadPre
    ● vim-sleuth 0.26ms  start
    ● vim-tmux-navigator 0.11ms  start
    ● which-key.nvim 0.55ms  VeryLazy

  Not Loaded (13)
    ○ cmp-buffer  nvim-cmp
    ○ cmp-path  nvim-cmp
    ○ cmp-rg  nvim-cmp
    ○ cmp_luasnip  nvim-cmp
    ○ crates.nvim  rust  toml  nvim-cmp
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ friendly-snippets  LuaSnip
    ○ fzf-lua  <leader>f/  <leader>fh  <leader>fd  <leader>fw  <leader>fr  <leader>f.  <leader>fp  <leader><leader>  <leader>fb  <C-P>  ,r  ,,  <leader>ff  <leader>fn  <leader>fg
    ○ lspkind.nvim  nvim-cmp
    ○ LuaSnip  nvim-cmp
    ○ nvim-cmp  InsertEnter
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq

  Disabled (5)
    ○ bamboo.nvim
    ○ gruvbox.nvim
    ○ kanagawa.nvim
    ○ modus-themes.nvim
    ○ nightfox.nvim
```
