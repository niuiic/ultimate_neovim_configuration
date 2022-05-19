local status, neoscroll = pcall(require, "neoscroll")
if not status then
	vim.notify("not found neoscroll")
	return
end

neoscroll.setup(require("neoscroll").setup({
	-- All these keys will be mapped to their corresponding default scrolling animation
	mappings = { "<C-u>", "<C-d>", "zt", "zz", "zb" },
	hide_cursor = true, -- Hide cursor while scrolling
	stop_eof = true, -- Stop at <EOF> when scrolling downwards
	use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
	respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
	cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
	easing_function = nil, -- Default easing function
	pre_hook = nil, -- Function to run before the scrolling animation starts
	post_hook = nil, -- Function to run after the scrolling animation ends
	performance_mode = false, -- Disable "Performance Mode" on all buffers.
}))

local t = {}
t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } }
t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "250" } }
t["zt"] = { "zt", { "250" } }
t["zz"] = { "zz", { "250" } }
t["zb"] = { "zb", { "250" } }

require("neoscroll.config").set_mappings(t)
