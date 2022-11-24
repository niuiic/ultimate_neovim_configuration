local divider = require("script/divider/divider")
local ui = require("script/divider/ui")

local config = {
	dividers = {
		{
			divider_pattern = [[%%=+ [\s\S]+ =+%%]],
			content_pattern = [[%%%%=+ ([%s%S]*) =+%%%%]],
			hl = "#ff00ff",
			list = true,
		},
		{
			divider_pattern = [[%%-+ [\s\S]+ -+%%]],
			content_pattern = [[%%%%%-+ ([%s%S]*) %-+%%%%]],
			hl = "#ffff00",
			list = true,
		},
		{
			divider_pattern = [[%% [\s\S]+ %%]],
			content_pattern = [[%%%% ([%s%S]*) %%%%]],
			hl = "#00ff7c",
			list = false,
		},
	},
}

local function setup(new_config)
	if new_config == nil then
		new_config = config
	end
	local hl_group = {}
	for _, value in ipairs(new_config.dividers) do
		table.insert(hl_group, value.hl)
	end
	ui.create_hl_group(hl_group)
end

local function set_autocmd()
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
		pattern = { "*" },
		callback = function()
			if vim.bo.filetype ~= "qf" then
				divider.divide(config.dividers)
			end
		end,
	})
end

setup()
set_autocmd()
