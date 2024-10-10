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

```bash
  Total: 32 plugins

  Loaded (26)
    ● blink.cmp 1.43ms  start
    ● catppuccin 1.99ms  start
    ● conform.nvim 0.44ms  start
    ● corn.nvim 0.5ms  nvim-lspconfig
    ● fidget.nvim 2.09ms  nvim-lspconfig
    ● flash.nvim 0.8ms  VeryLazy
    ● friendly-snippets 0.11ms  blink.cmp
    ● lazy.nvim 4.25ms  init.lua
    ● lsp-inlayhints.nvim 0.38ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.07ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.64ms  nvim-lspconfig
    ● mason.nvim 0.07ms  nvim-lspconfig
    ● mini.nvim 3.07ms  start
    ● neodev.nvim 0.5ms  nvim-lspconfig
    ● noice.nvim 1.3ms  VeryLazy
    ● nui.nvim 0.22ms  noice.nvim
    ● nvim-colorizer.lua 1.66ms  VeryLazy
    ● nvim-lspconfig 8.68ms  start
    ● nvim-notify 0.23ms  noice.nvim
    ● nvim-treesitter 2.78ms  start
    ● peek.nvim 0.35ms  VeryLazy
    ● quicker.nvim 0.24ms  start
    ● vim-just 0.05ms  BufReadPre
    ● vim-sleuth 0.23ms  start
    ● vim-tmux-navigator 0.11ms  start
    ● which-key.nvim 0.38ms  VeryLazy

  Not Loaded (6)
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <leader>fr  ,r  <leader>f.  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <leader>fd  <leader>fw  ,,  <leader><leader>  <leader>fp  <leader>fb  <C-P>
    ○ mini.icons  fzf-lua
    ○ no-neck-pain.nvim  <leader>nn  <leader>nu  <leader>nd
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq
```

## Customization

- Add or modify plugins in `lua/plugins/`
- Adjust config in `lua/config/*.lua`

## Troubleshooting

If you encounter any issues:

1. Ensure all prerequisites are installed
2. Run `:checkhealth` and address any errors
