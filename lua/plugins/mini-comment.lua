return {
	"echasnovski/mini.comment",
	config = function()
		require("mini.comment").setup({
			mappings = {
				comment = "gc",
				comment_line = "gcc",
				textobject = "gc",
			},
			hooks = {
				pre = function() end,
				post = function() end,
			},
		})
	end,
}
