local blink = require("blink.cmp")
return {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = {
        "main.py",
        "pyproject.toml",
        "ruff.toml",
        ".ruff.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        ".git",
        ".venv",
    },
    init_options = {
        settings = {
            lineLength = 160,
        },
    },
    capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        blink.get_lsp_capabilities(),
        {
            fileOperations = {
                didRename = true,
                willRename = true,
            },
        }
    ),
}
