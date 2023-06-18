return {
	"echasnovski/mini.trailspace",
	config = function()
		require("mini.trailspace").setup({
			only_in_normal_buffers = true,
		})
	end,
	keys = {
		{ "<leader>tw", ":lua MiniTrailspace.trim()<CR>", desc = "trailspace" },
	},
}
