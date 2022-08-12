local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').terraformls.setup {
	capabilities = capabilities,
	on_attach = function (client, bufnr)
		require('aerial').on_attach(client, bufnr)
	end
}
