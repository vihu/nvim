return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdateSync",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			ignore_install = { "phpdoc" },
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			autopairs = {
				enable = true,
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end,
}
