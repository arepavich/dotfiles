require('utils.reload')
vim.cmd('filetype plugin indent on')
vim.opt.termguicolors = true

require('keybinds')
require('plugins.dependencies')

--require('colors.catppuccin')
vim.cmd[[colorscheme kanagawa]]
require('plugins')

