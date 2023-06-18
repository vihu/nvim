return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	enabled = false,
	config = function()
		require("gruvbox").setup({
			undercurl = false,
			underline = false,
			bold = false,
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
			strikethrough = false,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true,
			contrast = "medium",
			overrides = {
				SignColumn = { bg = "" },
			},
			dim_inactive = true,
			transparent_mode = true,
		})
		vim.o.background = "light"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
