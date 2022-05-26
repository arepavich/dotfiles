require('nvim-autopairs').setup{}
vim.g.neo_tree_remove_legacy_commands = 1
require('neo-tree').setup({
	window = {
		position = 'left'
	}
})
require('window-picker').setup()

require('gitsigns').setup()
require('null-ls').setup({
	sources = {
		require('null-ls').builtins.code_actions.gitsigns,
	}
})

require('plugins.nvim-cmp')

local gps = require('nvim-gps')
gps.setup()

gps_component = {gps.get_location, cond = gps.is_available}

local sections = {
	lualine_a = {'mode'},
	lualine_b = {'branch', 'diff', 'diagnostics'},
	lualine_c = {'filename', gps_component},
	lualine_x = {'encoding', 'fileformat', 'filetype'},
	lualine_y = {'progress'},
	lualine_z = {'location'}
}

require('lualine').setup({
	sections = sections,
})

require('Comment').setup()
require("indent_blankline").setup()

require('leap').set_default_keymaps()
