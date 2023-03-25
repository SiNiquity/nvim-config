-- Change leader key from \
vim.g.mapleader = ","

vim.keymap.set({'n', 'v', 'o'}, '<Leader>g', function() require('hop').hint_words() end)
vim.keymap.set({'n', 'v', 'o'}, '<Leader>l', function() require('hop').hint_words({ current_line_only = true}) end)
vim.keymap.set({'n', 'v', 'o'}, '<Leader>h', function() require('hop').hint_lines_skip_whitespace() end)
