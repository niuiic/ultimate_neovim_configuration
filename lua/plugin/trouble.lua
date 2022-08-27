local utils = require("utils")

utils.fn.require("trouble").setup({
	action_keys = { -- key mappings for actions in the trouble list
		close = "q", -- close the list
		cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
		refresh = "r", -- manually refresh
		jump = { "<cr>" }, -- jump to the diagnostic or open / close folds
		open_split = { "<c-h>" }, -- open buffer in new split
		open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
		open_tab = { "<c-t>" }, -- open buffer in new tab
		jump_close = { "o" }, -- jump to the diagnostic and close the list
		toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
		toggle_preview = "t", -- toggle auto_preview
		hover = "K", -- opens a small popup with the full multiline message
		preview = "p", -- preview the diagnostic location
		close_folds = { "zm" }, -- close all folds
		open_folds = { "zr" }, -- open all folds
		toggle_fold = { "z" }, -- toggle fold of current file
		previous = "k", -- preview item
		next = "j", -- next item
	},
	auto_close = true, -- automatically close the list when you have no diagnostics
	auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
})

utils.fn.whichKeyMap({
	t = {
		name = "trouble",
		d = {
			"<cmd>TroubleToggle workspace_diagnostics<CR>",
			"open diagnostics",
		},
		l = {
			"<cmd>TroubleToggle loclist<CR>",
			"open loclist",
		},
		f = {
			"<cmd>TroubleToggle lsp_references<CR>",
			"open lsp references list",
		},
	},
}, {
	mode = "n",
	prefix = "<localleader>",
})
