local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').jsonls.setup {
	capabilities = capabilities,
	filetypes = {"json", "jsonc"},
	settings = {
		json = {
			schemas = {
				{
					fileMatch = {"tsconfig*.json"},
					url = "https://json.schemastore.org/tsconfig.json"
				}
			}
		}
	}
}
