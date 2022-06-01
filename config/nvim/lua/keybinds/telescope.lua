function get_directories()

	directories = {}
	vim.ui.input({ prompt = 'Enter target directories (leave blank for cwd): '}, function(input)
		if (input ~= nil and string.len(input) > 0) then
			for dir in string.gmatch(input, "([^,]+)") do
				dir = string.gsub(dir, "%s+", "")
				table.insert(directories, dir)
			end
		end
	end)
	return directories
end

function grep_directory()
	directories = get_directories()
	if next(directories) == nil then
		require("telescope.builtin").live_grep()
	else
		require("telescope.builtin").live_grep({search_dirs = directories})
	end
end

function grep_string(directories)
	directories = get_directories()
	if next(directories) == nil then
		require("telescope.builtin").grep_string()
	else
		require("telescope.builtin").grep_string({search_dirs = directories})
	end
end

vim.keymap.set('n', 'fd', '<cmd>lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', 'ff', grep_directory)
vim.keymap.set('n', 'fs', grep_string)
vim.keymap.set('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>')
vim.keymap.set('n', 'fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n', 'fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>')

