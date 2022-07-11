local gps_status_ok, gps = pcall(require, 'nvim-gps')
if not gps_status_ok then
  return
end

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

local lualine_status_ok, lualine = pcall(require, 'lualine')
if not lualine_status_ok then
  return
end

lualine.setup({
	sections = sections,
})
