local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust", "python", "typescript", "tsx" },

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
		disable = { "python", "lua" }
	},
}
