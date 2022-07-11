vim.g.mapleader=","

vim.keymap.set('n', 'ZB', '<Cmd>bprev|bd#<CR>', {silent=true})
vim.keymap.set('n', 'gt', '<Cmd>bn<CR>', {silent=true})
vim.keymap.set('n', 'gT', '<Cmd>bp<CR>', {silent=true})

vim.keymap.set('n', '<C-j>', '<C-W>j')
vim.keymap.set('n', '<C-k>', '<C-W>k')
vim.keymap.set('n', '<C-h>', '<C-W>h')
vim.keymap.set('n', '<C-l>', '<C-W>l')

vim.keymap.set('n', '\\', '<cmd>Neotree reveal<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>Neotree source=buffers position=float<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Neotree source=git_status position=left<CR>')

require('keybinds.nvim-lsp')
require('keybinds.telescope')
-- require('keybinds.neotest')

vim.keymap.set('n', '<leader><C-r>', '<cmd>lua reload_nvim_conf()<CR>')
