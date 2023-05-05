return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	enabled = false,
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			no_italic = true,
			terminal_colors = true,
			styles = {
				comments = {},
				conditionals = {},
				loops = { "bold" },
				functions = { "bold" },
				keywords = { "bold" },
				strings = {},
				variables = {},
				numbers = { "bold" },
				booleans = { "bold" },
				properties = {},
				types = { "bold" },
				operators = {},
			},
			transparent_background = true,
			show_end_of_buffer = false,
			dim_inactive = {
				enabled = true,
			},
			integrations = {
				cmp = true,
				telescope = true,
				gitsigns = true,
				barbar = true,
				fidget = true,
				hop = true,
				indent_blankline = { enabled = true },
				lsp_saga = false,
				mason = true,
				mini = true,
				neotree = true,
				native_lsp = { enabled = true },
				treesitter = true,
			},
		})

		vim.api.nvim_command("colorscheme catppuccin-mocha")
	end,
}
