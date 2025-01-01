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
    ● blink.cmp 6.26ms  nvim-lspconfig
    ● conform.nvim 0.64ms  start
    ● corn.nvim 0.58ms  nvim-lspconfig
    ● fidget.nvim 3.35ms  nvim-lspconfig
    ● friendly-snippets 0.1ms  blink.cmp
    ● lazy.nvim 6.12ms  init.lua
    ● lsp-inlayhints.nvim 0.58ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.08ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.63ms  nvim-lspconfig
    ● mason.nvim 0.12ms  nvim-lspconfig
    ● mini.nvim 2.6ms  start
    ● neodev.nvim 0.73ms  nvim-lspconfig
    ● nightfox.nvim 1.95ms  start
    ● noice.nvim 0.95ms  VeryLazy
    ● nui.nvim 0.19ms  noice.nvim
    ● nvim-colorizer.lua 1.23ms  VeryLazy
    ● nvim-lspconfig 18.41ms  start
    ● nvim-treesitter 4.41ms  start
    ● nvim-treesitter-textobjects 2.62ms  nvim-treesitter
    ● nvim-web-devicons 0.11ms 󰢱 nvim-web-devicons  mini.nvim
    ● peek.nvim 0.57ms  VeryLazy
    ● quicker.nvim 0.31ms  start
    ● vim-just 0.03ms  BufReadPre
    ● vim-sleuth 0.42ms  start
    ● vim-tmux-navigator 0.11ms  start
    ● which-key.nvim 0.55ms  VeryLazy

  Not Loaded (6)
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <leader>fh  ,,  <leader>fw  <leader>fr  <leader>f.  <leader>fp  <leader><leader>  <leader>fb  <C-P>  ,r  <leader>fd  <leader>ff  <leader>fn  <leader>fg  <leader>f/
    ○ neo-tree.nvim  ,e
    ○ plenary.nvim  diffview.nvim  neo-tree.nvim
    ○ snacks.nvim  <leader>un  <leader>gb  <leader>gB
    ○ trouble.nvim  <leader>xl  <leader>xq  <leader>xx  <leader>xb  <leader>xs
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
