return {
    { 'rust-lang/rust.vim' },
    { 
        'mrcjkb/rustaceanvim',
        version = '^4',
        ft = { 'rust' },
        keys = {
            { "<leader>c", "<cmd>RustLsp openCargo<cr>", desc = "Open Cargo.toml" },
            { "<leader>a", "<cmd>RustLsp codeAction<cr>", desc = "Open code actions" },
            { "<leader>J", "<cmd>RustLsp joinLines<cr>", desc = "Smart join lines" },
        },
        config = function()
            vim.g.rustaceanvim = {
                server = {
                    on_attach = function(client, buffer)
                        if client.server_capabilities.inlayHintProvider then
                            vim.lsp.inlay_hint.enable(buffer, true)
                        end
                    end,
                },
            }
        end,
    },
}
