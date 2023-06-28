return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		-- CMP LSP completion
		"hrsh7th/cmp-nvim-lsp",
		-- Neovim lsp completion
		"hrsh7th/cmp-nvim-lua",
		-- CMP Snippet completion
		"saadparwaiz1/cmp_luasnip",
		-- Snipper collection
		"rafamadriz/friendly-snippets",
		-- cmp Path completion
		"hrsh7th/cmp-path",
		-- cmp buffer completion
		"hrsh7th/cmp-buffer",
		-- cmp ripgrep completion
		"lukas-reineke/cmp-rg",
		-- pictograms
		"onsails/lspkind.nvim",
	},
	config = function()
		local status_ok, cmp = pcall(require, "cmp")
		if not status_ok then
			return
		end

		local luasnip_status_ok, luasnip = pcall(require, "luasnip")
		if not luasnip_status_ok then
			return
		end

		local lspkind_status_ok, lspkind = pcall(require, "lspkind")
		if not lspkind_status_ok then
			return
		end

		local has_words_before = function()
			unpack = unpack or table.unpack
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		cmp.setup({
			preselect = cmp.PreselectMode.None,
			window = {
				completion = {
					-- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
					col_offset = -3,
					side_padding = 0,
				},
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = {
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif require("copilot.suggestion").is_visible() then
						require("copilot.suggestion").accept()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					elseif has_words_before() then
						cmp.complete()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = false,
				}),
			},
			-- Installed sources
			sources = {
				{ name = "nvim_lsp", group_index = 2 },
				{ name = "luasnip", group_index = 2 },
				{ name = "rg", group_index = 2 },
				{ name = "buffer", group_index = 2 },
				{ name = "path", group_index = 2 },
				{ name = "nvim_lua", group_index = 2 },
				{ name = "crates", group_index = 2 },
			},
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol",
					max_width = "50",
				}),
			},
		})

		vim.api.nvim_create_autocmd("BufRead", {
			group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
			pattern = "Cargo.toml",
			callback = function()
				cmp.setup.buffer({ sources = { { name = "crates" } } })
			end,
		})
	end,
}
