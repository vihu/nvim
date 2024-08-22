# Neovim Configuration

This configuration is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and includes additional customizations.

## Features

- Modular plugin management (plugins separated into individual files)
- Custom autocmds, options, globals, and keymaps
- Extra plugins for IDE like functionality

## Prerequisites

- [Neovim](https://neovim.io/) (latest stable)
- [ripgrep](https://github.com/BurntSushi/ripgrep) for fast searching
- [fzf](https://github.com/junegunn/fzf) for fuzzy file finding
- [mise](https://github.com/jdx/mise) for language version management
- [pyenv](https://github.com/pyenv/pyenv) for python management
- [Nerd Font](https://www.nerdfonts.com/font-downloads) for icons and glyphs

## Installation

1. Clone this repository to your Neovim configuration directory:

2. Install the required dependencies:

- Node.js:

  ```bash
  mise install node
  mise use node
  npm install -g yarn neovim
  ```

- Python:

  ```bash
  pyenv install 3.10.6
  mkdir -p ~/.config/pynvim && cd ~/.config/pynvim
  pyenv local 3.10.6
  python3 -m venv .venv
  source .venv/bin/activate
  pip install --upgrade pip pynvim
  ```

- Deno:
  ```bash
  mise install deno
  mise use deno
  ```

3. Launch Neovim and let it install the plugins automatically.

## Health Check

Run `:checkhealth` in Neovim and ensure the following are working correctly:

- clipboard
- git
- python support
- nodejs support

## Plugin List

This configuration includes 18 plugins (excluding dependencies).
Including the usual ones:

- nvim-lspconfig: Language Server Protocol support
- nvim-treesitter: Syntax highlighting and code parsing
- nvim-cmp: Autocompletion
- mason: LSP package manager
- fzf-lua: Fuzzy finder
- conform: Code formatter
- catppuccin: Color scheme

Here's a full list using `Lazy show`

```bash
  Total: 40 plugins

  Loaded (25)
    ● catppuccin 1.79ms  start
    ● cmp-nvim-lsp 0.06ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.39ms  start
    ● corn.nvim 0.38ms  nvim-lspconfig
    ● fidget.nvim 2.19ms  nvim-lspconfig
    ● flash.nvim 0.92ms  VeryLazy
    ● lazy.nvim 3.94ms  init.lua
    ● lsp-inlayhints.nvim 0.34ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.07ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.62ms  nvim-lspconfig
    ● mason.nvim 0.07ms  nvim-lspconfig
    ● mini.nvim 3.15ms  start
    ● neodev.nvim 0.46ms  nvim-lspconfig
    ● noice.nvim 1.01ms  VeryLazy
    ● nui.nvim 0.14ms  noice.nvim
    ● nvim-colorizer.lua 1.14ms  VeryLazy
    ● nvim-lspconfig 8.94ms  start
    ● nvim-notify 0.13ms  noice.nvim
    ● nvim-treesitter 2.56ms  start
    ● peek.nvim 0.6ms  VeryLazy
    ● quicker.nvim 0.29ms  start
    ● vim-just 0.04ms  BufReadPre
    ● vim-sleuth 0.22ms  start
    ● vim-tmux-navigator 0.11ms  start
    ● which-key.nvim 0.43ms  VeryLazy

  Not Loaded (15)
    ○ cmp-buffer  nvim-cmp
    ○ cmp-path  nvim-cmp
    ○ cmp-rg  nvim-cmp
    ○ cmp_luasnip  nvim-cmp
    ○ crates.nvim  toml  rust  nvim-cmp
    ○ diffview.nvim  <leader>gc  <leader>gh  <leader>gd
    ○ friendly-snippets  LuaSnip
    ○ fzf-lua  <C-P>  <leader>fr  ,r  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <leader><leader>  <leader>fw  ,,  <leader>f.  <leader>fp  <leader>fb  <leader>fd
    ○ lspkind.nvim  nvim-cmp
    ○ LuaSnip  nvim-cmp
    ○ mini.icons  fzf-lua
    ○ no-neck-pain.nvim  <leader>np
    ○ nvim-cmp  InsertEnter
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xb  <leader>xs  <leader>xl  <leader>xq  <leader>xx
```

## Customization

- Add or modify plugins in `lua/plugins/`
- Adjust config in `lua/config/*.lua`

## Troubleshooting

If you encounter any issues:

1. Ensure all prerequisites are installed
2. Run `:checkhealth` and address any errors
