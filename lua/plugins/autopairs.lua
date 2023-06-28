return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            disable_filetype = {
                "help",
                "neo-tree",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "TelescopePrompt",
            },
        })
    end,
}
