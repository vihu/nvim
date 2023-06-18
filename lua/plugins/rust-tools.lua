return {
	"simrat39/rust-tools.nvim",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"lukas-reineke/lsp-format.nvim",
	},
	ft = "rust",
	config = function()
		local status_ok, rust_tools = pcall(require, "rust-tools")
		if not status_ok then
			return
		end

		local lsp_format_status_ok, lsp_format = pcall(require, "lsp-format")
		if not lsp_format_status_ok then
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

		local on_attach = function(client, bufnr)
			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					vim.diagnostic.open_float(open_float_opts, {})
				end,
			})
			lsp_format.on_attach(client)
		end

		rust_tools.setup({
			server = {
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "clippy",
						},
						inlayHints = {
							locationLinks = false,
						},
						diagnostics = {
							disabled = { "inactive-code" },
						},
					},
				},
			},
			dap = {
				adapter = {
					type = "executable",
					command = "lldb-vscode",
					name = "rt_lldb",
				},
			},
		})
	end,
}
