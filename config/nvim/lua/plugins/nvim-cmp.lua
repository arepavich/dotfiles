local cmp = require('cmp')
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered()
	},
	mapping = cmp.mapping.preset.insert({
		['<leader><C-j>'] = cmp.mapping.scroll_docs(-4),
		['<leader><C-k>'] = cmp.mapping.scroll_docs(4),
		['<leader><C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				local entry = cmp.get_selected_entry()
				if not entry then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
					cmp.confirm()
				else
					cmp.confirm()
				end
			else
				fallback()
			end
		end, {"i", "s", "c",})
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' },
	}
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig').jedi_language_server.setup {
	capabilities = capabilities
}
