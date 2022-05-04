require('nvim-treesitter.configs').setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust", "python" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	--List of parsers to ignore installing (for "all")
	ignore_install = { "javascript" },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "gni",
			scope_incremental = "gnc",
			node_decremental = "gnm",
		},
	},
	indent = {
		enable = true,
	},
}

require('nvim-gps').setup({disable_icons = true})
local gps = require('nvim-gps')


local components = {
	active = {},
	inactive = {},
}

table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

table.insert(components.active[1], {
	name = 'gps',
	provider = function()
		return gps.get_location()
	end,
	enabled = function()
		return gps.is_available()
	end
})
require('feline').setup({
	preset = 'noicon',
	components = components
})
