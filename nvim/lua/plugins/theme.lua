return {
    {
        'projekt0n/github-nvim-theme',
        version = 'v1.0.1',
        config = function()
            require('github-theme').setup()
            vim.cmd('colorscheme github_dark_high_contrast')
        end,
    },
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
}
