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
  Total: 40 plugins

  Loaded (28)
    ● catppuccin 2.24ms  start
    ● cmp-nvim-lsp 0.04ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.41ms  start
    ● fidget.nvim 2.19ms  nvim-lspconfig
    ● flash.nvim 1.19ms  VeryLazy
    ● fzf-lua 7.3ms  <C-P>
    ● lazy.nvim 4.25ms  init.lua
    ● lsp-inlayhints.nvim 0.44ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.12ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.85ms  nvim-lspconfig
    ● mason.nvim 0.17ms  nvim-lspconfig
    ● mini.nvim 3.26ms  start
    ● neodev.nvim 0.57ms  nvim-lspconfig
    ● noice.nvim 1.34ms  VeryLazy
    ● nui.nvim 0.2ms  noice.nvim
    ● nvim-colorizer.lua 0.87ms  VeryLazy
    ● nvim-lspconfig 11.9ms  start
    ● nvim-notify 0.17ms  noice.nvim
    ● nvim-tree.lua 6.61ms  start
    ● nvim-treesitter 3.01ms  start
    ● nvim-web-devicons 0.29ms  nvim-tree.lua
    ● peek.nvim 0.59ms  VeryLazy
    ● quicker.nvim 0.34ms  start
    ● tiny-inline-diagnostic.nvim 2.76ms  nvim-lspconfig
    ● vim-just 0.03ms  BufReadPre
    ● vim-sleuth 0.22ms  start
    ● vim-tmux-navigator 0.15ms  start
    ● which-key.nvim 0.52ms  VeryLazy

  Not Loaded (12)
    ○ cmp-buffer  nvim-cmp
    ○ cmp-path  nvim-cmp
    ○ cmp-rg  nvim-cmp
    ○ cmp_luasnip  nvim-cmp
    ○ crates.nvim  rust  toml  nvim-cmp
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ friendly-snippets  LuaSnip
    ○ lspkind.nvim  nvim-cmp
    ○ LuaSnip  nvim-cmp
    ○ nvim-cmp  InsertEnter
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq
```
