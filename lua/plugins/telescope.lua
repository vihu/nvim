return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "jvgrootveld/telescope-zoxide",
        "nvim-telescope/telescope-live-grep-args.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    keys = {
        -- Use ctrl-p for finding files
        {
            "<C-P>",
            "<cmd>lua require('telescope.builtin').find_files()<CR>",
            desc = "find files",
        },
        -- Live grep with ,,
        {
            "<leader>,",
            ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
            desc = "live grep with ,,",
        },
        -- Show help tags
        {
            "<leader>fh",
            "<cmd>lua require('telescope.builtin').help_tags()<CR>",
            desc = "show overall help",
        },
        -- Switch between currently open buffers
        {
            "  ",
            "<cmd>lua require('telescope.builtin').buffers()<CR>",
            desc = "switch between buffers",
        },
        -- Jump to function definition
        {
            "<c-]>",
            "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>",
            desc = "jump to fun definition",
        },
        -- Jump to zoxide known directory
        {
            "<leader>cd",
            "<cmd>lua require('telescope').extensions.zoxide.list{}<CR>",
            desc = "jump to zoxide dir",
        },
        -- Show references
        {
            "gr",
            "<cmd>lua require('telescope.builtin').lsp_references()<CR>",
            desc = "show references",
        },
        -- Show buffer diagnostics
        {
            "<leader>xd",
            "<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<CR>",
            desc = "buffer diagnostics",
        },
        -- Show workspace diagnostics
        {
            "<leader>xw",
            "<cmd>lua require('telescope.builtin').diagnostics()<CR>",
            desc = "workspace diagnostics",
        },
    },
    config = function()
        local width = vim.fn.winwidth(0)
        require("telescope").setup({
            defaults = {
                -- NOTE: This is unfortunately static, it won't work if you resize the terminal
                layout_strategy = width > 200 and "horizontal" or "vertical",
                layout_config = {
                    preview_cutoff = 0,
                },
                file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/", "^assets/" },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        })
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("zoxide")
        require("telescope").load_extension("live_grep_args")
    end,
}
