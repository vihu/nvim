return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	keys = {
		{ "gd", "<cmd>vim.lsp.buf.definition<CR>", desc = "peek definition" },
		{ "<leader>ca", "<cmd>vim.lsp.buf.code_action()<CR>", desc = "code action" },
		{ "K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "hover doc" },
		{ "gD", "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "implementation" },
		{ "gK", "<cmd>lua vim.lsp.buf.signature_help()<CR>", desc = "signature help" },
		{ "1gD", "<cmd>lua vim.lsp.buf.type_definition()<CR>", desc = "type definition" },
		{ "g0", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", desc = "document symbol" },
		{ "gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", desc = "workspace symbol" },
		{ "g[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "goto previous" },
		{ "g]", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "goto next" },
	},
	config = function()
		local status_ok, lspconfig = pcall(require, "lspconfig")
		if not status_ok then
			return
		end

		local cmp_nvim_lsp_status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
		if not cmp_nvim_lsp_status_ok then
			return
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		local open_float_opts = {
			focusable = false,
			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
			border = "rounded",
			source = "always",
			prefix = " ",
			scope = "line",
		}

		local on_attach = function(_, bufnr)
			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					vim.diagnostic.open_float(open_float_opts, {})
				end,
			})
		end

		lspconfig.elixirls.setup({
			cmd = { "language_server.sh" },
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.erlangls.setup({
			on_attach = function(client, bufnr)
				client.server_capabilities.document_formatting = false
				client.server_capabilities.document_range_formatting = false
				vim.api.nvim_create_autocmd("CursorHold", {
					buffer = bufnr,
					callback = function()
						vim.diagnostic.open_float(open_float_opts, {})
					end,
				})
			end,
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.tsserver.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			on_attach = on_attach,
			filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
			capabilities = capabilities,
		})
	end,
}
