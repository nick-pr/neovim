local default_colors = require("kanagawa.colors").setup()

local my_colors = {
	fujiWhite = "#c0caf5",
}
local overrides = {
	VertSplit = { fg = default_colors.bg_dark, bg = "NONE" },
}
local colors = require("kanagawa").setup { colors = my_colors, overrides = overrides }
vim.cmd "colorscheme kanagawa"

return vim.tbl_extend("force",default_colors,my_colors)
