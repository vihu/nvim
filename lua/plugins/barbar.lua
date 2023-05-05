return {
	"romgrk/barbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			exclude_ft = { "neo-tree" },
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(tbl)
				local set_offset = require("bufferline.api").set_offset

				local bufwinid
				local last_width
				local autocmd = vim.api.nvim_create_autocmd("WinScrolled", {
					callback = function()
						bufwinid = bufwinid or vim.fn.bufwinid(tbl.buf)

						local width = vim.api.nvim_win_get_width(bufwinid)
						if width ~= last_width then
							set_offset(width, "FileTree")
							last_width = width
						end
					end,
				})

				vim.api.nvim_create_autocmd("BufWipeout", {
					buffer = tbl.buf,
					callback = function()
						vim.api.nvim_del_autocmd(autocmd)
						set_offset(0)
					end,
					once = true,
				})
			end,
			pattern = { "neo-tree", "DiffviewFiles" },
		})
	end,
	lazy = false,
	keys = {
		{ "<leader>bd", "<cmd>BufferClose<cr>", desc = "buffer close" },
		{ "<leader>s", "<cmd>BufferNext<cr>", desc = "buffer next" },
		{ "<leader>a", "<cmd>BufferPrevious<cr>", desc = "buffer previous" },
	},
}
