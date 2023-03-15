return {
	config = function()
		require("part-edit").setup({
			swap_path = function()
				local work_path = require("niuiic-core").file.root_path()
				return string.format("%s%s", string.gsub(work_path, "/", "_"), "_swap")
			end,
		})
	end,
	keys = {
		{
			"<space>p",
			":<c-u>PartEdit<CR>",
			desc = "edit selected code",
			mode = "v",
			silent = true,
		},
	},
	dependencies = { "niuiic/niuiic-core.nvim" },
}
