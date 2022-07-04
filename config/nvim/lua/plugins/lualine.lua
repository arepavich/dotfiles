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
