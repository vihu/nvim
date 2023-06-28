return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "whoissethdaniel/mason-tool-installer.nvim",
    },
    config = function()
        local status_ok, mason = pcall(require, "mason")
        if not status_ok then
            return
        end

        mason.setup({})

        local mason_lsp_config_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
        if not mason_lsp_config_status_ok then
            return
        end

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "erlangls",
                "elixirls",
                "tsserver",
                "pyright",
                "denols",
            },
        })

        local mti_status_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
        if not mti_status_ok then
            return
        end

        mason_tool_installer.setup({
            ensure_installed = {
                "deno",
                "html-lsp",
                "stylua",
                "lua-language-server",
                "shellcheck",
                "black",
                "isort",
                "clangd",
                "clang-format",
                "erlang-ls",
                "elixir-ls",
                "pyright",
                "rust-analyzer",
                "shfmt",
                "sql-formatter",
                "sqlls",
                "typescript-language-server",
            },
        })
    end,
}
