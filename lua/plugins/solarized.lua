return {
	"maxmx03/solarized.nvim",
	priority = 1000,
	enabled = false,
	config = function()
		local _, solarized = pcall(require, "solarized")

		solarized:setup({
			config = {
				theme = "neovim",
				transparent = true,
			},
			highlights = function(colors)
				return {
					NormalNC = { fg = colors.comment, bg = colors.bg_alt },
				}
			end,
		})

		vim.cmd("colorscheme solarized")
	end,
}
