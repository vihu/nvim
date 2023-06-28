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
			highlights = function(colors, darken, _, _)
				return {
					NormalNC = { fg = colors.fg, bg = darken(colors.bg, 10) },
					LineNr = { bg = nil },
					SignColumn = { bg = nil },
				}
			end,
		})

		vim.o.background = "dark"
		vim.cmd("colorscheme solarized")
	end,
}
