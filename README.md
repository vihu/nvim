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
  Total: 34 plugins

  Loaded (28)
    ● blink.cmp 4.45ms  nvim-lspconfig
    ● conform.nvim 0.59ms  start
    ● corn.nvim 0.78ms  nvim-lspconfig
    ● fidget.nvim 3.62ms  nvim-lspconfig
    ● flash.nvim 1.09ms  VeryLazy
    ● friendly-snippets 0.18ms  blink.cmp
    ● fzf-lua 4.46ms  <C-P>
    ● lazy.nvim 5.44ms  init.lua
    ● lsp-inlayhints.nvim 0.73ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.12ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.73ms  nvim-lspconfig
    ● mason.nvim 0.09ms  nvim-lspconfig
    ● mini.icons 0.25ms  fzf-lua
    ● mini.nvim 2.76ms  start
    ● neodev.nvim 0.69ms  nvim-lspconfig
    ● nightfox.nvim 18.19ms  start
    ● noice.nvim 1.28ms  VeryLazy
    ● nui.nvim 0.26ms  noice.nvim
    ● nvim-colorizer.lua 1.86ms  VeryLazy
    ● nvim-lspconfig 18.03ms  start
    ● nvim-treesitter 5.84ms  start
    ● nvim-treesitter-textobjects 3.66ms  nvim-treesitter
    ● peek.nvim 0.7ms  VeryLazy
    ● quicker.nvim 0.33ms  start
    ● vim-just 0.04ms  BufReadPre
    ● vim-sleuth 0.3ms  start
    ● vim-tmux-navigator 0.16ms  start
    ● which-key.nvim 0.96ms  VeryLazy

  Not Loaded (6)
    ○ cinnamon.nvim  zt  zz  <c-d>  <c-u>  G  <c-f>  gg  zb  <c-b>
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ no-neck-pain.nvim  <leader>nu  <leader>nd  <leader>nn
    ○ plenary.nvim  diffview.nvim
    ○ snacks.nvim  <leader>gB  <leader>un  <leader>gb
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
