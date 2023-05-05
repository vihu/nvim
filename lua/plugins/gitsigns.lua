return {
	"lewis6991/gitsigns.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { hl = "GitSignsAdd", text = "+", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
			},
			current_line_blame = false,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol",
				delay = 200,
				ignore_whitespace = false,
			},
		})
	end,
	keys = {
		{ "<leader>d", ":Gitsigns preview_hunk<CR>", desc = "preview hunk" },
		{ "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", desc = "toggle git blame" },
	},
}
