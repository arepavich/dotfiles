local function grep_directory()
  local function do_grep(directories)
    if next(directories) == nil then
      require("telescope.builtin").live_grep()
    else
      require("telescope.builtin").live_grep({search_dirs = directories})
    end
  end

  local cwd = vim.fn.getcwd()
	vim.ui.input({ prompt = string.format('Enter target directories (leave blank for %s): ', cwd)}, function(input)
    local directories = {}
		if (input ~= nil and string.len(input) > 0) then
			for dir in string.gmatch(input, "([^,]+)") do
				dir = string.gsub(dir, "%s+", "")
				table.insert(directories, dir)
			end
		end
    do_grep(directories)
  end)
end

vim.keymap.set('n', '<leader>fd', '<cmd>lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', '<leader>ff', grep_directory)
vim.keymap.set('n', '<leader>fs', '<cmd>lua require("telescope.builtin").grep_string()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>')
-- vim.keymap.set('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>')
vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>')

