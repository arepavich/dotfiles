local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pylsp.setup {
	capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 120
        },
        rope_autoimport = {
          enabled = true,
        },
      }
    }
  }
}
