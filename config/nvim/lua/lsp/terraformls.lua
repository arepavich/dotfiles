local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').terraformls.setup {
	capabilities = capabilities,
	on_attach = function (client, bufnr)
		require('aerial').on_attach(client, bufnr)
	end
}
