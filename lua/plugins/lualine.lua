return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "WhoIsSethDaniel/lualine-lsp-progress" },
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "auto",
                component_separators = "|",
                section_separators = { left = "", right = "" },
            },
            extensions = {
                "neo-tree",
                "quickfix",
                "fzf",
                "toggleterm",
            },
            globalstatus = true,
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = { { "filename", file_status = true, path = 1 } },
                lualine_x = {
                    {
                        "diagnostics",
                        sources = { "nvim_lsp" },
                        sections = { "error", "warn", "info", "hint" },
                        symbols = { error = "E", warn = "W", info = "I", hint = "H" },
                        colored = true,
                        update_in_insert = false,
                        always_visible = false,
                    },
                },
                lualine_y = { "encoding", "fileformat", "filetype", "progress" },
                lualine_z = {
                    "location",
                    "searchcount",
                    {
                        require("lazy.status").updates,
                        cond = require("lazy.status").has_updates,
                        color = { fg = "#ffffff" },
                    },
                },
            },
            inactive_sections = {},
            disable_filetypes = { "packer", "neo-tree", "TelescopePrompt" },
        })
    end,
}
