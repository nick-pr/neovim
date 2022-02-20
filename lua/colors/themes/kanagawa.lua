local default_colors = require("kanagawa.colors").setup()

local my_colors = {
	fujiWhite = "FBF5F3",
}
local overrides = {
	VertSplit = { fg = default_colors.bg_dark, bg = "NONE" },
	CursorLine = { bg = "NONE" },
	TSConstructor = { fg = default_colors.waveAqua2 },
}
local colors = require("kanagawa").setup { colors = my_colors, overrides = overrides }

vim.cmd "colorscheme kanagawa"
vim.cmd "set cursorline"

return vim.tbl_extend("force", default_colors, my_colors)
