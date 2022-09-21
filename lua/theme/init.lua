local hl = require("core.utils").highlight
local highlights = require("theme.highlights")

local M = {}

M.init = function()
	for group, opt in pairs(highlights) do
		hl(group, opt)
	end
end
return M
