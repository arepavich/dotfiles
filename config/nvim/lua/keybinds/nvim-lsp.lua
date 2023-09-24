vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {silent=true})
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {silent=true})
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {silent=true})
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {silent=true})
vim.keymap.set('n', 'J', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {silent=true})
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {silent=true})

vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', {silent=true})
vim.keymap.set('v', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', {silent=true})
vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {silent=true})

vim.keymap.set('i', '<C-K>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {silent=true})
