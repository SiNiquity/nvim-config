return {
    { 'rust-lang/rust.vim' },
    { 
        'mrcjkb/rustaceanvim',
        version = '^3',
        ft = { 'rust' },
        keys = {
            { "<leader>c", "<cmd>RustLsp openCargo<cr>", desc = "Open Cargo.toml" },
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
