-- file encoding
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- no compatible to vi
vim.g.nocompatible = true

-- avoid unnecessary redrawing
vim.g.lazyredraw = true

-- show sign column on the left
vim.wo.signcolumn = "yes"

-- termguicolors
vim.opt.termguicolors = true

-- show line number
vim.wo.number = true

-- tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- tab => space
vim.opt.expandtab = true

-- auto indent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true

-- cmd line height
vim.o.cmdheight = 2

-- auto reload file when it is changed from outside
vim.o.autoread = true
vim.bo.autoread = true

-- auto wrap
vim.wo.wrap = true

-- no swap file and backup
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- smaller timeoutlen
vim.o.timeoutlen = 300

-- split window will appear at bottom and right
vim.o.splitbelow = true
vim.o.splitright = true

-- more powerful auto completion
vim.o.wildmenu = true

-- python
vim.g.python3_host_prog = "/usr/bin/python"

-- enable mouse mode
vim.o.mouse = "a"

-- fold
vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.api.nvim_create_autocmd("BufWinLeave", {
	callback = function()
		pcall(function()
			vim.cmd("silent! mkview")
		end)
	end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
	callback = function()
		pcall(function()
			vim.cmd("silent! loadview")
		end)
	end,
})

-- filetype
vim.filetype.add({
	extension = {
		ebuild = "sh",
		zsh = "sh",
		glsl = "glsl",
		wgsl = "wgsl",
		mdx = "markdown",
		typ = "typst",
		ts = "typescript",
		todo = "todo",
		http = "http",
		d2 = "d2",
	},
	pattern = {
		["TODO"] = "todo",
	},
})

-- yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		local higroup = vim.fn.hlexists("HighlightedyankRegion") > 0 and "HighlightedyankRegion" or "IncSearch"
		vim.highlight.on_yank({ higroup = higroup, timeout = 500 })
	end,
})

-- snippet
vim.api.nvim_set_hl(0, "SnippetTabstop", {})
