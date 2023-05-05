return {
	"jinzhongjia/LspUI.nvim",
	event = "VeryLazy",
	config = function()
		require("LspUI").setup({
			lightbulb = {
				enable = false, -- close by default
				command_enable = false, -- close by default, this switch does not have to be turned on, this command has no effect
				icon = "💡",
			},
			code_action = {
				enable = true,
				command_enable = true,
				icon = "💡",
				keybind = {
					exec = "<CR>",
					prev = "k",
					next = "j",
					quit = "q",
				},
			},
			hover = {
				enable = true,
				command_enable = true,
				keybind = {
					prev = "p",
					next = "n",
					quit = "q",
				},
			},
			rename = {
				enable = true,
				command_enable = true,
				auto_select = true, -- whether select all automatically
				keybind = {
					change = "<CR>",
					quit = "<ESC>",
				},
			},
			diagnostic = {
				enable = true,
				command_enable = true,
				icons = {
					Error = " ",
					Warn = " ",
					Info = " ",
					Hint = " ",
				},
			},
			peek_definition = {
				enable = true, -- close by default
				command_enable = true,
				keybind = {
					edit = "op",
					vsplit = "ov",
					split = "os",
					quit = "q",
				},
			},
		})
	end,
	keys = {
		{
			"gd",
			"<cmd>LspUI peek_definition<CR>",
			desc = "peek definition",
		},
		{ "K", "<cmd>LspUI hover<CR>", desc = "hover doc" },
		{ "gm", "<cmd>LspUI rename<CR>", desc = "rename" },
		{ "<leader>ca", "<cmd>LspUI code_action<CR>", desc = "code action" },
	},
}
