return {
	"jake-stewart/jfind.nvim",
	enabled = true,
	keys = {
		{ "<c-p>" },
	},
	config = function()
		require("jfind").setup({
			exclude = {
				".git",
				".idea",
				".vscode",
				".sass-cache",
				".class",
				"__pycache__",
				"node_modules",
				"target",
				"build",
				"tmp",
				"assets",
				"dist",
				"public",
				"*.iml",
				"*.meta",
			},
			border = "none",
			tmux = false,
			formatPaths = true,
			key = "<c-p>",
			maxWidth = 90,
			maxHeight = 30,
		})
	end,
}
