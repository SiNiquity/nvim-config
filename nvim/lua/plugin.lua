-- After adding a new plugin reload this with ':luafile %' and install with ':PackerInstall'
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- LSP Config
    use 'neovim/nvim-lspconfig'

    -- Rust
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

    -- Navigation
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { }
        end
    }

    -- Themes
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
end)
