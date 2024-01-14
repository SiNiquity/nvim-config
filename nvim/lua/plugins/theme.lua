return {
    {
        'projekt0n/github-nvim-theme',
        version = 'v1.0.1',
        config = function()
            require('github-theme').setup()
            vim.cmd('colorscheme github_dark_high_contrast')
        end,
    },
}
