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
  Total: 36 plugins

  Loaded (31)
    ● blink.cmp 8.85ms  start
    ● conform.nvim 0.45ms  start
    ● corn.nvim 0.66ms  nvim-lspconfig
    ● fidget.nvim 3.02ms  nvim-lspconfig
    ● flash.nvim 1.09ms  VeryLazy
    ● friendly-snippets 0.13ms  blink.cmp
    ● lazy.nvim 39.01ms  init.lua
    ● mason-lspconfig.nvim 0.14ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.56ms  nvim-lspconfig
    ● mason.nvim 0.13ms  nvim-lspconfig
    ● mini.nvim 4.06ms  start
    ● neo-tree.nvim 1.89ms  ,e
    ● neodev.nvim 0.84ms  nvim-lspconfig
    ● nightfox.nvim 1.98ms  start
    ● noice.nvim 0.96ms  VeryLazy
    ● nui.nvim 0.2ms  noice.nvim
    ● nvim-colorizer.lua 1.62ms  VeryLazy
    ● nvim-lsp-endhints 1.08ms  LspAttach
    ● nvim-lspconfig 45.55ms  start
    ● nvim-treesitter 5.99ms  start
    ● nvim-treesitter-textobjects 4.06ms  nvim-treesitter
    ● nvim-web-devicons 0.14ms 󰢱 nvim-web-devicons  mini.nvim
    ● peek.nvim 0.66ms  VeryLazy
    ● plenary.nvim 0.42ms  neo-tree.nvim
    ● quicker.nvim 0.37ms  start
    ● snacks.nvim 0.68ms  start
    ● vim-just 0.07ms  BufReadPre
    ● vim-sleuth 0.42ms  start
    ● vim-tmux-navigator 0.24ms  start
    ● which-key.nvim 0.55ms  VeryLazy
    ● zk-nvim 1.19ms  start

  Not Loaded (5)
    ○ crates.nvim  BufRead Cargo.toml
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ fzf-lua  <leader>fh  <leader>fd  <leader>fw  <leader>fr  ,,  <leader>fp  <leader><leader>  <leader>fb  <leader>f.  ,r  <C-P>  <leader>ff  <leader>fn  <leader>fg  <leader>f/
    ○ no-neck-pain.nvim  <leader>nd  <leader>nn  <leader>nu
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
