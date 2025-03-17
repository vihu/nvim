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
- [fnm](https://github.com/Schniz/fnm) for language version management
- [uv](https://github.com/astral-sh/uv) for python management
- [direnv](https://www.nerdfonts.com/font-downloads) for easy venv activation
- [Nerd Font](https://www.nerdfonts.com/font-downloads) for icons and glyphs

## Installation

1. Clone this repository to your Neovim configuration directory:

2. Install the required dependencies:

- Node.js:

  ```bash
  fnm install node
  npm install -g yarn neovim
  ```

- Python:

  ```bash
  mkdir -p ~/.config/nvimpy && cd ~/.config/nvimpy
  uv init .
  echo 'layout uv' > .envrc
  direnv allow
  uv add pynvim
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
  Total: 34 plugins

  Loaded (28)
    ● blink.cmp 3.89ms  nvim-lspconfig
    ● conform.nvim 0.26ms  start
    ● corn.nvim 0.36ms  nvim-lspconfig
    ● fidget.nvim 3.14ms  nvim-lspconfig
    ● friendly-snippets 0.09ms  blink.cmp
    ● lazy.nvim 4.27ms  init.lua
    ● lsp-inlayhints.nvim 0.29ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.07ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.23ms  nvim-lspconfig
    ● mason.nvim 0.08ms  nvim-lspconfig
    ● mini.nvim 2.24ms  start
    ● neodev.nvim 0.4ms  nvim-lspconfig
    ● nightfox.nvim 1.73ms  start
    ● noice.nvim 1.03ms  VeryLazy
    ● nui.nvim 0.19ms  noice.nvim
    ● nvim-colorizer.lua 1.22ms  VeryLazy
    ● nvim-lspconfig 13.92ms  start
    ● nvim-treesitter 3.33ms  start
    ● nvim-treesitter-textobjects 1.77ms  nvim-treesitter
    ● nvim-web-devicons 0.12ms 󰢱 nvim-web-devicons  mini.nvim
    ● peek.nvim 0.5ms  VeryLazy
    ● quicker.nvim 0.24ms  start
    ● snacks.nvim 0.35ms  start
    ● vim-just 0.05ms  BufReadPre
    ● vim-sleuth 0.36ms  start
    ● vim-tmux-navigator 0.22ms  start
    ● which-key.nvim 0.58ms  VeryLazy
    ● zk-nvim 1.09ms  start

  Not Loaded (6)
    ○ diffview.nvim  <leader>gc  <leader>gh  <leader>gd
    ○ fzf-lua  <leader>f.  <leader>fp  <leader>fb  ,,  ,r  <C-P>  <leader><leader>  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <leader>fd  <leader>fw  <leader>fr
    ○ neo-tree.nvim  ,e
    ○ no-neck-pain.nvim  <leader>nn  <leader>nu  <leader>nd
    ○ plenary.nvim  diffview.nvim  neo-tree.nvim
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq
```

## Customization

- Add or modify plugins in `lua/plugins/`
- Adjust config in `lua/config/*.lua`

## Troubleshooting

If you encounter any issues:

1. Ensure all prerequisites are installed
2. Run `:checkhealth` and address any errors

## Screenshots

![Day Mode 1](screenshots/day1.png)
![Day Mode 2](screenshots/day2.png)
![Night Mode 1](screenshots/night1.png)
![Night Mode 2](screenshots/night2.png)
