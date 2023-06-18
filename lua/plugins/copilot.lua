return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				-- enabled for:
				rust = true,
				python = true,
				lua = true,
				markdown = true,
				erlang = true,
				sql = true,

				-- disbled for everything else:
				["."] = false,
			},
		})
	end,
}
