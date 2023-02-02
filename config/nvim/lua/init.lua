require('utils.reload')
vim.cmd('filetype plugin indent on')
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 0
-- vim.opt.softtabstop = 0
-- vim.opt.expandtab = true



require('plugins')
require('keybinds')
require('autocommands')
-- require('plugins.dependencies')

--require('colors.catppuccin')
--require('colors.tokyonight')
--vim.cmd[[colorscheme tokyonight]]
--require('lsp')

local popui_input_status_ok, popui_input = pcall(require, 'popui.input-overrider')
if popui_input_status_ok then
  vim.ui.input = popui_input
end

local popui_ui_status_ok, popui_ui = pcall(require, 'popui.ui-overrider')
if popui_ui_status_ok then
  vim.ui.select = popui_ui
end
