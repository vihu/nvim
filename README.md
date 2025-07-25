# Neovim Configuration

## Prerequisites

| Requirement                                      | Description                 |
| ------------------------------------------------ | --------------------------- |
| [nvim](https://neovim.io/)                       | nvim (install via brew/yay) |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | for fast searching          |
| [fd](https://github.com/sharkdp/fd)              | for file finding            |
| [fzf](https://github.com/junegunn/fzf)           | fuzzy finder backend        |
| [font](https://www.nerdfonts.com/font-downloads) | for icons and symbols       |

## Dependencies

- **Node.js** (via [fnm](https://github.com/Schniz/fnm)):

```bash
$ fnm install node
$ npm install -g neovim
```

- **Python** (via [uv](https://github.com/astral-sh/uv)):

```bash
$ mkdir -p ~/.config/nvimpy && cd ~/.config/nvimpy
$ uv init
$ echo 'layout uv' > .envrc
$ direnv allow
$ uv add pynvim
```

## Installation

```bash
$ mv ~/.config/nvim ~/.config/nvim.bak
$ git clone https://github.com/vihu/nvim ~/.config/nvim
# Open nvim (plugins will be automatically installed!)
$ nvim
```

## Post Install: Health Check

Run `:checkhealth` and install missing LSPs and formatters, for example:

```bash
$ brew install shfmt ruff stylua python-lsp-server
$ npm install -g typescript-language-server sql-formatter prettier
$ go install golang.org/x/tools/gopls@latest
$ rustup add component rust-analyzer
```
