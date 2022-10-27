local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pylsp.setup {
	capabilities = capabilities,
	on_attach = function (client, bufnr)
		require('aerial').on_attach(client, bufnr)
	end,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 120
        }
      }
    }
  }
}
