return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	keys = {
		{ "<c-space>", desc = "Increment selection" },
		{ "<bs>", desc = "Decrement selection", mode = "x" },
	},
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "markdown" },
		},
		indent = { enable = true },
		ignore_install = { "phpdoc" },
		ensure_installed = {
			"bash",
			"c",
			"html",
			"javascript",
			"json",
			"lua",
			"luadoc",
			"luap",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
			"rust",
			"elixir",
			"erlang",
			"sql",
			"hjson",
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
	},
	config = function(_, opts)
		if type(opts.ensure_installed) == "table" then
			---@type table<string, boolean>
			local added = {}
			opts.ensure_installed = vim.tbl_filter(function(lang)
				if added[lang] then
					return false
				end
				added[lang] = true
				return true
			end, opts.ensure_installed)
		end
		require("nvim-treesitter.configs").setup(opts)
	end,
}
