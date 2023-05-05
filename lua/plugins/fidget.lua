return {
    "j-hui/fidget.nvim",
    config = function()
        require("fidget").setup({
            window = {
                blend = 50,
            },
            text = {
                spinner = "dots_snake",
            },
            align = {
                bottom = true,
                right = true,
            },
        })
    end,
}
