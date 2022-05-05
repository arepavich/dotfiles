vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', {silent=true})
vim.keymap.set('n', 'gD', '<Plug>(coc-declaration)', {silent=true})
vim.keymap.set('n', 'gi', '<Plug>(coc-implementations)', {silent=true})
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', {silent=true})

vim.keymap.set('n', '<leader>a', '<Plug>(coc-codeaction-selected)<CR>')
vim.keymap.set('v', '<leader>a', '<Plug>(coc-codeaction-selected)<CR>')

