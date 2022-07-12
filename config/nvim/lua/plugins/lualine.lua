local sections = {
	lualine_a = {'mode'},
	lualine_b = {'branch', 'diff', 'diagnostics'},
	lualine_c = {'filename'},
	lualine_x = {'encoding', 'fileformat', 'filetype'},
	lualine_y = {'progress'},
	lualine_z = {'location'}
}

local lualine_status_ok, lualine = pcall(require, 'lualine')
if not lualine_status_ok then
  return
end

lualine.setup({
	sections = sections,
})
