require('utils.reload')
vim.cmd('filetype plugin indent on')
vim.opt.termguicolors = true

require('keybinds')
require('plugins')

local catppuccin = require('catppuccin')
catppuccin.setup({
	transparent_background = false,
term_colors = false,
styles = {
	comments = "NONE",
	functions = "NONE",
	keywords = "NONE",
	strings = "NONE",
	variables = "NONE",
},
integrations = {
	treesitter = false,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = "NONE",
			hints = "NONE",
			warnings = "NONE",
			information = "NONE",
		},
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		},
	},
	lsp_trouble = false,
	cmp = true,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = true,
	telescope = true,
	nvimtree = {
		enabled = false,
		show_root = false,
		transparent_panel = false,
	},
	neotree = {
		enabled = true,
		show_root = false,
		transparent_panel = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = false,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
}
})

vim.cmd[[colorscheme catppuccin]]
