local default_colors = require("kanagawa.colors").setup()

local my_colors = {}

local overrides = {
	VertSplit = { fg = default_colors.bg_dark, bg = "NONE" },
	TSError = { link = "Error" },
	TSKeywordOperator = { style = "bold" },
	StatusLine = { fg = my_colors.new_color },
}

require("kanagawa").setup { overrides = overrides, colors = my_colors }
