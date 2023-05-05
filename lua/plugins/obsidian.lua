return {
	"epwalsh/obsidian.nvim",
	tag = "v1.8.0",
	config = function()
		require("obsidian").setup({

			dir = "~/syncthing/notes",
			notes_subdir = "scratchpad",
			completion = {
				nvim_cmp = true,
			},
			note_id_func = function(title)
				local suffix = ""
				if title ~= nil then
					suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
				else
					for _ in 1, 4 do
						suffix = suffix .. string.char(math.random(65, 90))
					end
				end
				return tostring(os.time()) .. "-" .. suffix
			end,
		})
	end,
	keys = {
		{ "<leader>sn", ":ObsidianSearch<CR>", desc = "obsidian search" },
		{
			"<leader>nn",
			function()
				return "<Cmd>ObsidianNew " .. vim.fn.input("Title: ") .. "<CR>"
			end,
			expr = true,
		},
	},
}
