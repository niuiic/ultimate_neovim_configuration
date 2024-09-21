-- lsps installed:
-- ◍ vue-language-server
-- ◍ bash-language-server
-- ◍ css-lsp
-- ◍ cssmodules-language-server
-- ◍ eslint-lsp
-- ◍ html-lsp
-- ◍ json-lsp
-- ◍ lua-language-server
-- ◍ rust-analyzer
-- ◍ stylelint-lsp
-- ◍ taplo
-- ◍ vtsls
-- ◍ wgsl-analyzer
-- ◍ yaml-language-server
-- ◍ marksman
-- ◍ lemminx
-- ◍ tinymist
-- ◍ dockerfile-language-server
-- ◍ glsl_analyzer
-- ◍ some-sass-language-server
-- ◍ css-variables-language-server
-- ◍ pyright

-- daps installed:
-- ◍ bash-debug-adapter
-- ◍ js-debug-adapter
-- ◍ codelldb
-- ◍ debugpy

-- formatters installed:
-- ◍ prettier
-- ◍ shfmt
-- ◍ stylua
-- ◍ xmlformatter
-- ◍ black
-- ◍ typstfmt

return {
	config = function()
		require("mason").setup()
	end,
	keys = {
		{
			"<leader>ni",
			"<cmd>Mason<cr>",
			desc = "lsp installation",
		},
	},
	lazy = false,
}
