# nvim

- Uses [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) as the initial template.
- Separates out plugins to separate files.
- Adds some more plugins which I like.
- Lots of [mini.nvim](https://github.com/echasnovski/mini.nvim) plugins!

## Requirements

- [ripgrep](https://github.com/BurntSushi/ripgrep), fast searching: `$ cargo install ripgrep`.

- [fzf](https://github.com/junegunn/fzf), fast fuzzy file finding:

```bash
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

- A nerd font (for icons etc), you can pick one [here](https://www.nerdfonts.com/font-downloads).

- Install nodejs, recommended installer: [mise](https://github.com/jdx/mise).

- Setup nodejs for neovim:

  ```bash
  $ npm install -g yarn
  $ npm install -g neovim
  ```

- Install python3, recommended installer: [pyenv](https://github.com/pyenv/pyenv).

- Setup python for neovim:

  ```bash
  $ mkdir -p ~/.config/pynvim
  $ cd ~/.config/pynvim
  $ pyenv local 3.10.6
  $ python3 -m venv .venv
  $ source .venv/bin/activate
  $ pip install --upgrade pip && pip install pynvim
  ```

- Setup deno: `$ cargo install deno --locked`

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
    ● catppuccin 2.11ms  start
    ● cmp-nvim-lsp 0.02ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.35ms  start
    ● corn.nvim 0.46ms  nvim-lspconfig
    ● fidget.nvim 1.89ms  nvim-lspconfig
    ● flash.nvim 0.68ms  VeryLazy
    ● fzf-lua 5.44ms  <C-P>
    ● lazy.nvim 4.24ms  init.lua
    ● lsp-inlayhints.nvim 0.32ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.14ms  nvim-lspconfig
    ● mason-tool-installer.nvim 0.9ms  nvim-lspconfig
    ● mason.nvim 0.1ms  nvim-lspconfig
    ● mini.nvim 3.13ms  start
    ● neodev.nvim 0.38ms  nvim-lspconfig
    ● noice.nvim 0.93ms  VeryLazy
    ● nui.nvim 0.21ms  noice.nvim
    ● nvim-colorizer.lua 0.68ms  VeryLazy
    ● nvim-lspconfig 8.69ms  start
    ● nvim-notify 0.18ms  noice.nvim
    ● nvim-tree.lua 5.55ms  start
    ● nvim-treesitter 2.75ms  start
    ● nvim-web-devicons 0.12ms  nvim-tree.lua
    ● peek.nvim 0.44ms  VeryLazy
    ● quicker.nvim 0.32ms  start
    ● vim-just 0.04ms  BufReadPre
    ● vim-sleuth 0.23ms  start
    ● vim-tmux-navigator 0.17ms  start
    ● which-key.nvim 0.59ms  VeryLazy

  Not Loaded (12)
    ○ cmp-buffer  nvim-cmp
    ○ cmp-path  nvim-cmp
    ○ cmp-rg  nvim-cmp
    ○ cmp_luasnip  nvim-cmp
    ○ crates.nvim  rust  toml  nvim-cmp
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ friendly-snippets  LuaSnip
    ○ lspkind.nvim  nvim-cmp
    ○ LuaSnip  nvim-cmp
    ○ nvim-cmp  InsertEnter
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xx  <leader>xb  <leader>xs  <leader>xl  <leader>xq
```
