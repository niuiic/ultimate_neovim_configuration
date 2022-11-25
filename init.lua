local utils = require("utils")

package.path = "./?/init.lua;" .. package.path

utils.fn.require("basic")
utils.fn.require("keymap")
utils.fn.require("plugins")
utils.fn.require("snippet")
utils.fn.require("source")
utils.fn.require("script")

-- config for Workspace
local local_config = utils.fn.root_pattern() .. "/.nvim/init.lua"
if utils.fn.file_exists(local_config) then
	dofile(local_config)
end
