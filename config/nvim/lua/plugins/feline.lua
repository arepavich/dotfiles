local feline = require('feline')
feline.add_theme(require("catppuccin.core.color_palette"))

require('nvim-gps').setup({disable_icons = true})
local gps = require('nvim-gps')

local vi_mode_utils = require('feline.providers.vi_mode')
local vi_mode_text = {
  NORMAL = '<|',
  OP = '<|',
  INSERT = '|>',
  VISUAL = '<>',
  LINES = '<>',
  BLOCK = '<>',
  REPLACE = '<>',
  ['V-REPLACE'] = '<>',
  ENTER = '<>',
  MORE = '<>',
  SELECT = '<>',
  COMMAND = '<|',
  SHELL = '<|',
  TERM = '<|',
  NONE = '<>',
  CONFIRM = '|>'
}

local components = {
	active = {},
	inactive = {},
}

table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

table.insert(components.active[1], {
	provider = function()
		return vi_mode_text[vi_mode_utils.get_vim_mode()]
	end,
	hl = function()
		local val = {}
		val.bg = vi_mode_utils.get_mode_color()
		val.fg = 'black'
		val.style = 'bold'

		return val
	end,
	right_sep = ' '
})
table.insert(components.active[1], {
	provider = 'file_size',
	right_sep = ' '
})

table.insert(components.active[1], {
	provider = 'file_info',
	left_sep = { str = ' ', hl={bg='blue', fg='bg'}},
	right_sep = ' ',
	hl = {
		fg = 'fg',
		bg = 'blue',
		style = 'bold'
	}
})
table.insert(components.active[1], {
	provider = 'position',
	right_sep = ' '
})
table.insert(components.active[1], {
	name = 'gps',
	provider = function()
		return gps.get_location()
	end,
	enabled = function()
		return gps.is_available()
	end,
	right_sep = ' '
})
require('feline').setup({
	components = require('catppuccin.core.integrations.feline')
	--components = components
})
