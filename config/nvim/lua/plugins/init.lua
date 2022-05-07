require('nvim-autopairs').setup{}
require('plugins.nvim-cmp')
vim.g.neo_tree_remove_legacy_commands = 1
require('neo-tree').setup({
	window = {
		position = 'left'
	}
})
require('plugins.feline')
