require('nvim-autopairs').setup{}
vim.g.neo_tree_remove_legacy_commands = 1
require('neo-tree').setup({
	window = {
		position = 'left'
	}
})
require('null-ls').setup({
	sources = {
		require('null-ls').builtins.code_actions.gitsigns,
	}
})
require('plugins.nvim-cmp')
require('gitsigns').setup()
require('plugins.feline')
