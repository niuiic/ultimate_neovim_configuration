local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.offsetEncoding = "utf-8"

require("lspconfig").clangd.setup({
	on_attach = function(client, bufnr)
		client.server_capabilities.document_formatting = false -- 0.7 and earlier
		client.server_capabilities.documentFormattingProvider = false -- 0.8 and hopefully later
		require("utils").fn.setLspKeyMap(bufnr)
	end,
	capabilities = capabilities,
})
