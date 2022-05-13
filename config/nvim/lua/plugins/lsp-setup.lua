local servers = { 'pyright', 'jedi-language-server' }

for _, lsp in pairs(servers) do
	require('lspconfig')[lsp].setup()
end

require('lspconfig').pyright.setup({
	on_attach = function(client)
		client.server_capabilities = {
			completionProvider = true
		}
	end
})
require('lspconfig').jedi_language_server.setup({
	on_attach = function(client)
		client.server_capabilities.completionProvider = false
	end
})
