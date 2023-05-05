return {
	"L3MON4D3/LuaSnip",
	config = function()
		local luasnip_status_ok, ls = pcall(require, "luasnip")
		if not luasnip_status_ok then
			return
		end

		-- load friendly snippets (vscode style)
		require("luasnip.loaders.from_vscode").lazy_load()

		-- local shorthands
		local snip = ls.snippet
		local text = ls.text_node
		local insert = ls.insert_node
		local func = ls.function_node

		-- allow moving back and forth within a snippet
		Imap("<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", OPTS)
		Smap("<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", OPTS)
		Imap("<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", OPTS)
		Smap("<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", OPTS)

		ls.config.set_config({
			history = true,
			-- treesitter-hl has 100, use something higher (default is 200).
			ext_base_prio = 200,
			-- minimal increase in priority.
			ext_prio_increase = 1,
			enable_autosnippets = false,
			store_selection_keys = "<c-s>",
		})

		local date = function()
			return { os.date("%Y-%m-%d") }
		end

		-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
		local function bash(_, _, command)
			local file = io.popen(command, "r")
			local res = {}
			for line in file:lines() do
				table.insert(res, line)
			end
			return res
		end

		ls.add_snippets(nil, {
			all = {
				-- Select timestamp, press C-s, enter to receive utc datetime
				snip({
					trig = "utc",
					namr = "utc_datetime",
					dscr = "Create utc datetime from timestamp",
				}, {
					func(function(_, snippet)
						return os.date("!%a %d %b %H:%M:%S", snippet.env.TM_SELECTED_TEXT[1])
							.. " UTC "
							.. os.date("%Y")
					end, {}),
					insert(0),
				}),
				snip({
					trig = "date",
					namr = "Date",
					dscr = "Date in the form of YYYY-MM-DD",
				}, {
					func(date, {}),
				}),
				snip({
					trig = "pwd",
					namr = "PWD",
					dscr = "Path to current working directory",
				}, {
					func(bash, {}, "pwd"),
				}),
				snip({
					trig = "signature",
					namr = "Signature",
					dscr = "Name and Surname",
				}, {
					text("Rahul Garg"),
					insert(0),
				}),
			},
			sh = {
				snip("shebang", {
					text({ "#!/bin/sh", "" }),
					insert(0),
				}),
			},
			python = {
				snip("shebang", {
					text({ "#!/usr/bin/env python", "" }),
					insert(0),
				}),
			},
			lua = {
				snip("shebang", {
					text({ "#!/usr/bin/lua", "", "" }),
					insert(0),
				}),
				snip("req", {
					text("require('"),
					insert(1, "Module-name"),
					text("')"),
					insert(0),
				}),
				snip("func", {
					text("function("),
					insert(1, "Arguments"),
					text({ ")", "\t" }),
					insert(2),
					text({ "", "end", "" }),
					insert(0),
				}),
			},
			markdown = {
				-- Select link, press C-s, enter link to receive snippet
				snip({
					trig = "link",
					namr = "markdown_link",
					dscr = "Create markdown link [txt](url)",
				}, {
					text("["),
					insert(1),
					text("]("),
					func(function(_, snippet)
						return snippet.env.TM_SELECTED_TEXT[1] or {}
					end, {}),
					text(")"),
					insert(0),
				}),
				snip({
					trig = "codewrap",
					namr = "markdown_code_wrap",
					dscr = "Create markdown code block from existing text",
				}, {
					text("``` "),
					insert(1, "Language"),
					text({ "", "" }),
					func(function(_, snippet)
						local tmp = {}
						tmp = snippet.env.TM_SELECTED_TEXT
						tmp[0] = nil
						return tmp or {}
					end, {}),
					text({ "", "```", "" }),
					insert(0),
				}),
				snip({
					trig = "codeempty",
					namr = "markdown_code_empty",
					dscr = "Create empty markdown code block",
				}, {
					text("``` "),
					insert(1, "Language"),
					text({ "", "" }),
					insert(2, "Content"),
					text({ "", "```", "" }),
					insert(0),
				}),
				snip({
					trig = "meta",
					namr = "Metadata",
					dscr = "Yaml metadata format for markdown",
				}, {
					text({ "---", "title: " }),
					insert(1, "note_title"),
					text({ "", "author: " }),
					insert(2, "author"),
					text({ "", "date: " }),
					func(date, {}),
					text({ "", "cathegories: [" }),
					insert(3, ""),
					text({ "]", "lastmod: " }),
					func(date, {}),
					text({ "", "tags: [" }),
					insert(4),
					text({ "]", "comments: true", "---", "" }),
					insert(0),
				}),
			},
		})
	end,
}
