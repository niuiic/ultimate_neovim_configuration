local utils = require("utils")

local M = {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				-- search in current workspace
				path = vim.split(package.path, ";"),
				pathStrict = false,
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- search in other workspace
				library = vim.api.nvim_get_runtime_file("", true),
				-- search in third party library
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
	root_dir = utils.fn.root_pattern,
	commands = {
		LuaLsRename = {
			function()
				vim.lsp.buf.rename(nil, {
					name = "lua_ls",
				})
			end,
			description = "Rename",
		},
	},
}

return M
