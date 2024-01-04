local rt = require("rust-tools")

rt.setup({
    tools = {
        inlay_hints = {
            highlight = "Comment",
        },
    },
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
            -- Open Cargo.toml file
            vim.keymap.set("n", "<Leader>c", rt.open_cargo_toml.open_cargo_toml, { buffer = bufnr })
        end,
    },
})
