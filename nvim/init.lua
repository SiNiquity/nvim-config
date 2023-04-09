-- Configure vim with user options
-- This must be done first since some plugins pick up their defaults from vim
require('opts')

-- Global variables
require('vars')

-- This file defines new keymappings. Some of these may depend on plugins
require('keymaps')

-- Theme
require("github-theme").setup({
  theme_style = "dark_default",
  -- other config
})

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = '💀'})
sign({name = 'DiagnosticSignWarn', text = '😡'})
sign({name = 'DiagnosticSignHint', text = '🤢'})
sign({name = 'DiagnosticSignInfo', text = '😇'})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
