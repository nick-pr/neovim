local utils = require("theme.utils")
local highlights = require("theme.highlights")

-- Set the colorscheme
for group, opt in pairs(highlights) do
	utils.highlight(group, opt)
end
