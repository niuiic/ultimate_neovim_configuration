return {
	config = function()
		require("lsp_signature").setup({
			hint_enable = false,
		})
	end,
}
