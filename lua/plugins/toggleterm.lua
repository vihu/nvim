return {
	"akinsho/toggleterm.nvim",
	tag = "2.3.0",
	event = "VeryLazy",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = 30,
			open_mapping = [[<A-i>]],
		})

		local terminal = require("toggleterm.terminal").Terminal
		local cargo_build = terminal:new({ cmd = "cargo build --release", hidden = false, close_on_exit = false })
		local cargo_test = terminal:new({ cmd = "cargo nextest run --release", hidden = false, close_on_exit = false })
		local cargo_clippy =
			terminal:new({ cmd = "cargo clippy -- -W clippy::all", hidden = false, close_on_exit = false })
		local htop = terminal:new({ cmd = "htop", hidden = false, close_on_exit = false })

		vim.api.nvim_create_user_command("CargoBuild", function()
			cargo_build:toggle()
		end, { bang = true })

		vim.api.nvim_create_user_command("CargoTest", function()
			cargo_test:toggle()
		end, { bang = true })

		vim.api.nvim_create_user_command("CargoClippy", function()
			cargo_clippy:toggle()
		end, { bang = true })

		vim.api.nvim_create_user_command("Htop", function()
			htop:toggle()
		end, { bang = true })
	end,
}
