local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pyright.setup {
	capabilities = capabilities,
	on_attach = function(client, _)
		client.server_capabilities.completionProvider = false
		client.server_capabilities.hoverProvider = false
		client.server_capabilities.definitionProvider = false
		client.server_capabilities.rename = false
		client.server_capabilities.signature_help = false
	end
}
