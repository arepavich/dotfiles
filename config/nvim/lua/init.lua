require('utils.reload')
vim.cmd('filetype plugin indent on')
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.exrc = true
vim.opt.secure = true
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 0
-- vim.opt.softtabstop = 0
-- vim.opt.expandtab = true



require('plugins')
require('keybinds')
-- require('plugins.dependencies')

--require('colors.catppuccin')
vim.cmd[[colorscheme kanagawa]]
require('lsp')

