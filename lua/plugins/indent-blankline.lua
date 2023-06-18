return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("indent_blankline").setup({
            show_current_context = false,
            show_current_context_start = false,
            show_trailing_blankline_indent = false,
            char = "┊",
            filetype_exclude = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "lazyterm",
            },
        })
    end,
}
