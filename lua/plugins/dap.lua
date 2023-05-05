return {
    "mfussenegger/nvim-dap",
    config = function ()
        local dap = require("dap")
        dap.adapters.lldb = {
            type = "executable",
            command = "/usr/bin/lldb-vscode",
            name = "lldb"
        }
    end,
	keys = {
        -- toggle breakpoint
		{ "<leader>db", ":DapToggleBreakpoint<CR>", desc = "toggle breakpoint" },
		{ "<leader>dus", function ()
            local widgets = require("dap.ui.widgets");
            local sidebar = widgets.sidebar(widgets.scopes);
            sidebar.open();
		end, desc = "open dap sidebar" },
    }
}
