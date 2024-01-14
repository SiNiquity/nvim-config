-- Note: Need to be careful not to load rust-analyzer LSP here
-- as that will conflict with the rust tooling which handles it
return {
    {
        'williamboman/mason.nvim',
        -- dependencies = {
        --    'williamboman/mason-lspconfig.nvim',
        --},
        config = function()
            require('mason').setup()
        end,
    },
}
