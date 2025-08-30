# Neovim Configuration

## Prerequisites

| Requirement                                      | Description               |
| ------------------------------------------------ | ------------------------- |
| [nvim](https://neovim.io/)                       | nvim (recommended v0.11+) |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | fast grep                 |
| [fzf](https://github.com/junegunn/fzf)           | fast fuzzy finder         |
| [font](https://www.nerdfonts.com/font-downloads) | for icons and symbols     |

## Installation

```bash
$ mv ~/.config/nvim ~/.config/nvim.bak # backup your existing config first!
$ git clone https://github.com/vihu/nvim ~/.config/nvim # clone this repo
$ nvim # plugins should begin installing automatically
```

## Post Install: Health Check

- Run `:checkhealth` and install missing LSPs, formatters etc.
- Cleanup any errors, warnings are probably okay
