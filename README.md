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
  Total: 33 plugins

  Loaded (25)
    ● blink.cmp 5.05ms  nvim-lspconfig
    ● conform.nvim 0.28ms  start
    ● corn.nvim 0.6ms  nvim-lspconfig
    ● fidget.nvim 3.67ms  nvim-lspconfig
    ● friendly-snippets 0.19ms  blink.cmp
    ● lazy.nvim 7.33ms  init.lua
    ● lsp-inlayhints.nvim 0.62ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.15ms  nvim-lspconfig
    ● mason-tool-installer.nvim 2.07ms  nvim-lspconfig
    ● mason.nvim 0.12ms  nvim-lspconfig
    ● mini.nvim 2.91ms  start
    ● neodev.nvim 0.77ms  nvim-lspconfig
    ● nightfox.nvim 2.69ms  start
    ● noice.nvim 0.76ms  VeryLazy
    ● nui.nvim 0.16ms  noice.nvim
    ● nvim-colorizer.lua 1.17ms  VeryLazy
    ● nvim-lspconfig 19.41ms  start
    ● nvim-treesitter 5.28ms  start
    ● nvim-treesitter-textobjects 3.38ms  nvim-treesitter
    ● nvim-web-devicons 0.09ms 󰢱 nvim-web-devicons  mini.nvim
    ● peek.nvim 0.4ms  VeryLazy
    ● quicker.nvim 0.32ms  start
    ● vim-sleuth 0.37ms  start
    ● vim-tmux-navigator 0.29ms  start
    ● which-key.nvim 0.4ms  VeryLazy

  Not Loaded (8)
    ○ cinnamon.nvim  gg  zb  zt  zz  G  <c-d>  <c-b>  <c-u>  <c-f>
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <leader>fg  <leader>f/  ,,  <leader>fd  <leader>fw  <leader>fr  <leader><leader>  <leader>fp  <leader>fb  <leader>f.  ,r  <leader>fn  <leader>fh  <leader>ff  <C-P>
    ○ neo-tree.nvim  ,e
    ○ plenary.nvim  diffview.nvim  neo-tree.nvim
    ○ snacks.nvim  <leader>gB  <leader>un  <leader>gb
    ○ trouble.nvim  <leader>xl  <leader>xq  <leader>xx  <leader>xb  <leader>xs
    ○ vim-just  \cjustfile  *.just  .justfile  BufNewFile  BufReadPre
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
