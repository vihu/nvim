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

- [mise](https://github.com/jdx/mise), for language installation.

- A nerd font (for icons etc), you can pick one [here](https://www.nerdfonts.com/font-downloads).

- Install nodejs, recommended installer:

  ```bash
  mise install node
  mise use node
  ```

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

- Setup deno:

  ```bash
  mise install deno
  mise use deno
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

  Loaded (26)
    ● catppuccin 2.09ms  start
    ● cmp-nvim-lsp 0.03ms 󰢱 cmp_nvim_lsp  nvim-lspconfig
    ● conform.nvim 0.31ms  start
    ● corn.nvim 0.32ms  nvim-lspconfig
    ● fidget.nvim 2.56ms  nvim-lspconfig
    ● flash.nvim 0.91ms  VeryLazy
    ● lazy.nvim 4.38ms  init.lua
    ● lsp-inlayhints.nvim 0.24ms  nvim-lspconfig
    ● mason-lspconfig.nvim 0.07ms  nvim-lspconfig
    ● mason-tool-installer.nvim 1.15ms  nvim-lspconfig
    ● mason.nvim 0.08ms  nvim-lspconfig
    ● mini.nvim 1.97ms  start
    ● neodev.nvim 0.37ms  nvim-lspconfig
    ● no-neck-pain.nvim 0.84ms  start
    ● noice.nvim 0.8ms  VeryLazy
    ● nui.nvim 0.14ms  noice.nvim
    ● nvim-colorizer.lua 0.7ms  VeryLazy
    ● nvim-lspconfig 9.97ms  start
    ● nvim-notify 0.17ms  noice.nvim
    ● nvim-treesitter 2.87ms  start
    ● peek.nvim 0.4ms  VeryLazy
    ● quicker.nvim 0.33ms  start
    ● vim-just 0.03ms  BufReadPre
    ● vim-sleuth 0.22ms  start
    ● vim-tmux-navigator 0.09ms  start
    ● which-key.nvim 0.36ms  VeryLazy

  Not Loaded (14)
    ○ cmp-buffer  nvim-cmp
    ○ cmp-path  nvim-cmp
    ○ cmp-rg  nvim-cmp
    ○ cmp_luasnip  nvim-cmp
    ○ crates.nvim  toml  rust  nvim-cmp
    ○ diffview.nvim  <leader>gh  <leader>gd  <leader>gc
    ○ friendly-snippets  LuaSnip
    ○ fzf-lua  ,,  <leader>fp  <leader>ff  <leader><leader>  <leader>fg  <leader>f/  <leader>fh  <leader>fd  <leader>fw  <leader>fr  <leader>f.  <C-P>  <leader>fb  ,r  <leader>fn
    ○ lspkind.nvim  nvim-cmp
    ○ LuaSnip  nvim-cmp
    ○ mini.icons  fzf-lua
    ○ nvim-cmp  InsertEnter
    ○ plenary.nvim  diffview.nvim
    ○ trouble.nvim  <leader>xl  <leader>xq  <leader>xx  <leader>xb  <leader>xs
```
