require('utils.reload')
vim.cmd('filetype plugin indent on')
vim.opt.termguicolors = true
vim.opt.number = true

require('keybinds')
require('plugins.dependencies')

--require('colors.catppuccin')
vim.cmd[[colorscheme kanagawa]]
require('plugins')
require('lsp')

