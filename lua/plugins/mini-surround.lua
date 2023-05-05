return {
	"echasnovski/mini.surround",
	config = function()
		require("mini.surround").setup({
			custom_surroundings = nil,
			highlight_duration = 500,
			mappings = {
				add = "xa",
				delete = "xd",
				find = "xf",
				find_left = "xF",
				highlight = "xh",
				replace = "xr",
				update_n_lines = "xn",
				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
			n_lines = 20,
			search_method = "cover",
		})
	end,
}
