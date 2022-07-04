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
require('plugins.lualine')

require('Comment').setup()
require("indent_blankline").setup()

require('leap').set_default_keymaps()
require('nvim-surround').setup({
	keymaps = {
		visual = "as"
	}
})
