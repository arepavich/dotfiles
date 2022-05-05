vim.g.mapleader=","

vim.keymap.set('n', 'ZB', '<Cmd>bnext|bd#<CR>', {silent=true})
vim.keymap.set('n', 'gt', '<Cmd>bn<CR>', {silent=true})
vim.keymap.set('n', 'gT', '<Cmd>bp<CR>', {silent=true})

vim.keymap.set('n', '<C-j>', '<C-W>j')
vim.keymap.set('n', '<C-k>', '<C-W>k')
vim.keymap.set('n', '<C-h>', '<C-W>h')
vim.keymap.set('n', '<C-l>', '<C-W>l')

vim.keymap.set('n', '\\', '<cmd>Neotree reveal<CR>')

require('keybinds.coc')
