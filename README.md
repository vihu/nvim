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
- blink: Autocompletion
- mason: LSP package manager
- fzf-lua: Fuzzy finder
- conform: Code formatter
- catppuccin: Color scheme

Here's a full list using `Lazy show`

```bash
  Total: 32 plugins

  Updated (2)
    ● corn.nvim 0.32ms  nvim-lspconfig
        5106eff Fix #13: Check win_is_valid before trying to win_hide (#14) (4 hours ago)

    ● mini.nvim 3.12ms  start
        a535342 docs(notify): add example of showing notifications in bottom right (8 hours ago)
        16408bc docs(pairs): clarify that it works only with two character pair (8 hours ago)
        319361e docs(files): mention not lazy loading to work for directory in arglist (8 hours ago)
        b2c4c08 feat(hues): add `'lowmedium'` and `'mediumhigh'` saturation levels (8 hours ago)
        6049d62 ci: test on 0.10.2 instead of 0.10.1 (8 hours ago)


  Loaded (24)
    ● blink.cmp 1.36ms  start
    ● catppuccin 2.6ms  start
    ● conform.nvim 0.36ms  start
    ● fidget.nvim 3.02ms  nvim-lspconfig
    ● flash.nvim 0.79ms  VeryLazy
    ● friendly-snippets 0.11ms  blink.cmp
    ● lazy.nvim 4.02ms  init.lua
    ● lsp-inlayhints.nvim 0.26ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.08ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.94ms  nvim-lspconfig
    ● mason.nvim 0.08ms  nvim-lspconfig
    ● neodev.nvim 0.47ms  nvim-lspconfig
    ● noice.nvim 0.86ms  VeryLazy
    ● nui.nvim 0.17ms  noice.nvim
    ● nvim-colorizer.lua 0.79ms  VeryLazy
    ● nvim-lspconfig 8.73ms  start
    ● nvim-notify 0.17ms  noice.nvim
    ● nvim-treesitter 4.08ms  start
    ● peek.nvim 0.44ms  VeryLazy
    ● quicker.nvim 0.24ms  start
    ● vim-just 0.05ms  BufReadPre
    ● vim-sleuth 0.56ms  start
    ● vim-tmux-navigator 0.22ms  start
    ● which-key.nvim 0.54ms  VeryLazy

  Not Loaded (6)
    ○ diffview.nvim  <leader>gd  <leader>gc  <leader>gh
    ○ fzf-lua  <leader>ff  <leader>fn  <leader>fg  <leader>f/  <leader>fh  <leader>fd  <leader>fw  <leader>fr  <leader><leader>  <leader>fp  ,r  <leader>fb  <C-P>  ,,  <leader>f.
    ○ mini.icons  fzf-lua
    ○ no-neck-pain.nvim  <leader>nd  <leader>nn  <leader>nu
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
