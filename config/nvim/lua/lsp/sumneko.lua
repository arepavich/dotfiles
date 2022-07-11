local luadev = require('lua-dev').setup({
	library = { plugins = { "neotest" }, types = true },
})

require('lspconfig').sumneko_lua.setup(luadev)
