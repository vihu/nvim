local blink = require("blink.cmp")
return {
    cmd = { "rust-analyzer" },
    root_markers = { "Cargo.lock", "Cargo.toml" },
    filetypes = { "rust" },
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                features = 'all',
            },
            check = {
                features = 'all',
            },
            checkOnSave = {
                command = 'clippy',
            },
            inlayHints = {
                locationLinks = false,
            },
            diagnostics = {
                disabled = { 'inactive-code' },
            },
            imports = {
                granularity = {
                    group = 'Crate',
                    enforce = true,
                },
                merge = {
                    glob = true,
                },
            },
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
