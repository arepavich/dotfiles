vim.keymap.set('n', 'fd', '<cmd>lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', 'ff', '<cmd>lua require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>')
vim.keymap.set('n', 'fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
