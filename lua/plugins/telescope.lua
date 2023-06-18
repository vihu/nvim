return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jvgrootveld/telescope-zoxide",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	keys = {
		-- Search with ,,
		{ "<leader>,", "<cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "search with ,," },
		-- Grep for current string
		{
			"<leader>gs",
			"<cmd>lua require('telescope.builtin').grep_string()<CR>",
			desc = "grep for current string",
		},
		-- Show overall help
		{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", desc = "show overall help" },
		-- Switch between currently open buffers
		{
			"  ",
			"<cmd>lua require('telescope.builtin').buffers()<CR>",
			desc = "switch between buffers",
		},
		-- Switch between jumplist
		{
			"<leader>fj",
			"<cmd>lua require('telescope.builtin').jumplist()<CR>",
			desc = "switch between jumplists",
		},
		-- Jump to function definition
		{
			"<c-]>",
			"<cmd>lua require('telescope.builtin').lsp_definitions()<CR>",
			desc = "jump to fun definition",
		},
		-- Jump to zoxide known directory
		{ "<leader>cd", "<cmd>lua require('telescope').extensions.zoxide.list{}<CR>", desc = "jum to zoxide dir" },
		-- Show references
		{ "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", desc = "show references" },
		-- Show buffer diagnostics
		{
			"<leader>xd",
			"<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<CR>",
			desc = "buffer diagnostics",
		},
		-- Show workspace diagnostics
		{ "<leader>xw", "<cmd>lua require('telescope.builtin').diagnostics()<CR>", desc = "workspace diagnostics" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "vertical",
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("zoxide")
		-- Resume telescope window with ; in normal mode
		vim.keymap.set("n", ";", ":Telescope resume<CR>", {})
	end,
}
