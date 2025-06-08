# Neovim Configuration

A modern Neovim configuration using built-in LSP support and modular plugin management.

## Prerequisites

| Requirement                                      | Description                        | Recommended |
| ------------------------------------------------ | ---------------------------------- | ----------- |
| [Neovim](https://neovim.io/)                     | Show comprehensive LSP information | v0.11+      |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | for fast searching                 |             |
| [fd](https://github.com/sharkdp/fd)              | for file finding                   |             |
| [fzf](https://github.com/junegunn/fzf)           | fuzzy finder backend               |             |
| [Nerd Font](https://www.nerdfonts.com/)          | for icons and symbols              | JuliaMono   |

### Language Servers

Install the following language servers manually:

```bash
# Lua
brew install lua-language-server  # macOS
yay -S lua-language-server  # arch

# Go
go install golang.org/x/tools/gopls@latest

# Rust
rustup component add rust-analyzer

# TypeScript/JavaScript
npm install -g typescript typescript-language-server

# Python
pip install basedpyright ruff
```

### Formatters

Install formatters for automatic code formatting:

```bash
# General formatters
npm install -g prettier
go install mvdan.cc/sh/v3/cmd/shfmt@latest
brew install deno  # or https://deno.land/

# Language-specific
pip install ruff  # Python formatting and linting
cargo install stylua  # Lua formatter
npm install -g sql-formatter

# Protocol buffers (optional)
go install github.com/bufbuild/buf/cmd/buf@latest
```

### Development Dependencies

- **Node.js** (via [fnm](https://github.com/Schniz/fnm)):

  ```bash
  fnm install node
  npm install -g neovim
  ```

- **Python** (via [uv](https://github.com/astral-sh/uv)):

  ```bash
  mkdir -p ~/.config/nvimpy && cd ~/.config/nvimpy
  uv init
  echo 'layout uv' > .envrc
  direnv allow
  uv add pynvim
  ```

- **Deno** (for markdown preview):
  ```bash
  # Using mise
  mise install deno
  mise use deno
  ```

## Installation

1. **Backup existing configuration**:

   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this repository**:

   ```bash
   git clone https://github.com/vihu/nvim ~/.config/nvim
   ```

3. **Launch Neovim**:
   ```bash
   nvim
   ```
   Lazy.nvim will automatically install all plugins on first launch.

## Project Structure

```
nvim/
├── init.lua                # Entry point - loads core modules
├── lua/
│   ├── config/             # Core configuration
│   │   ├── autocmds.lua    # Auto commands and LSP attach logic
│   │   ├── globals.lua     # Global variables
│   │   ├── icons.lua       # Icon definitions
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── options.lua     # Vim options
│   │   └── utils.lua       # Utility functions
│   ├── core/
│   │   ├── lazy.lua        # Plugin manager setup
│   │   └── lsp.lua         # Built-in LSP configuration
│   └── plugins/            # Plugin configurations
│       ├── blink.lua       # Completion engine
│       ├── conform.lua     # Code formatting
│       ├── fzf.lua         # Fuzzy finder
│       ├── treesitter.lua  # Syntax highlighting
│       └── ...             # Other plugins
└── lsp/                    # LSP server configurations
    ├── basedpyright.lua    # Python LSP
    ├── gopls.lua           # Go LSP
    ├── lua-ls.lua          # Lua LSP
    ├── ruff.lua            # Python linter/formatter
    ├── rust-analyzer.lua   # Rust LSP
    └── ts-ls.lua           # TypeScript/JavaScript LSP
```

## Key Mappings

### Leader Key: `Space`

| Mapping            | Description              |
| ------------------ | ------------------------ |
| `<C-p>`            | Find files               |
| `,,`               | Live grep                |
| `<leader><leader>` | Switch buffers           |
| `<leader>ff`       | Find files               |
| `<leader>fg`       | Find by grep             |
| `<leader>fn`       | Find Neovim config files |
| `<leader>fh`       | Find help                |
| `<leader>fd`       | Find diagnostics         |

### LSP Mappings

| Mapping      | Description           |
| ------------ | --------------------- |
| `gd`         | Go to definition      |
| `gr`         | Go to references      |
| `gI`         | Go to implementation  |
| `K`          | Hover documentation   |
| `gl`         | Open diagnostic float |
| `<leader>ca` | Code actions          |
| `<leader>cn` | Rename symbol         |
| `<leader>lf` | Format buffer         |

### Git Mappings

| Mapping      | Description           |
| ------------ | --------------------- |
| `<leader>gd` | Git diff              |
| `<leader>gb` | Git blame line        |
| `<leader>gB` | Browse file in GitHub |
| `<leader>gh` | Git file history      |

## Commands

| Command            | Description                        |
| ------------------ | ---------------------------------- |
| `:LspInfo`         | Show comprehensive LSP information |
| `:LspStatus`       | Show attached LSP clients          |
| `:LspRestart`      | Restart LSP clients                |
| `:LspCapabilities` | Show LSP server capabilities       |
| `:LspDiagnostics`  | Show diagnostics count             |
| `:checkhealth`     | Check Neovim health                |

## Troubleshooting

1. **No LSP features working**:

   - Ensure language servers are installed and in PATH
   - Run `:LspInfo` to check if servers are attached
   - Check `:LspLog` for error messages

2. **Formatting not working**:

   - Install required formatters (see Prerequisites)
   - Check formatter configuration in `conform.lua`

3. **Missing icons**:

   - Install a Nerd Font and configure your terminal to use it

4. **Performance issues**:
   - Disable unused plugins in `lua/plugins/`
   - Check `:checkhealth` for potential issues

## Notes

- This configuration uses Neovim's built-in LSP (`vim.lsp.enable()`) instead of nvim-lspconfig
- Language servers must be installed manually (no auto-installation)
- Python host and Node.js host paths are configured in `globals.lua`
