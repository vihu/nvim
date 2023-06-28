return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = true, auto_trigger = true, accept = false },
			panel = { enabled = false },
			filetypes = {
				-- enabled for:
				rust = true,
				python = true,
				lua = true,
				markdown = true,
				erlang = true,
				sql = true,
				javascript = true,
				typescript = true,

				-- disbled for everything else:
				["."] = false,
			},
		})

		-- hide copilot suggestions when cmp menu is open
		-- to prevent odd behavior/garbled up suggestions
		local cmp_status_ok, cmp = pcall(require, "cmp")
		if cmp_status_ok then
			cmp.event:on("menu_opened", function()
				vim.b.copilot_suggestion_hidden = true
			end)

			cmp.event:on("menu_closed", function()
				vim.b.copilot_suggestion_hidden = false
			end)
		end
	end,
}
