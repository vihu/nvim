return {
	"EdenEast/nightfox.nvim",
	enabled = false,
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
				compile_file_suffix = "_compiled",
				transparent = true,
				terminal_colors = true,
				dim_inactive = true,
				module_default = false,
				styles = {
					comments = "NONE",
					conditionals = "NONE",
					constants = "NONE",
					functions = "NONE",
					keywords = "bold",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "NONE",
					variables = "NONE",
				},
				inverse = {
					match_paren = false,
					visual = false,
					search = false,
				},
				modules = {
					cmp = true,
					gitsigns = true,
					hop = true,
					lsp_saga = true,
					mini = true,
					native_lsp = true,
					neotree = true,
					telescope = true,
					treesitter = true,
					diagnostic = true,
					fidget = true,
					barbar = true,
				},
			},
			palettes = {},
			specs = {},
			groups = {},
		})

		vim.cmd("colorscheme dayfox")
	end,
}
