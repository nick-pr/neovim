local kanagawa_colors = require "colors.themes.kanagawa"

local colors = {
	fg = kanagawa_colors.fujiWhite,
}

local componets = {
	branch = {
		"branch",
		color = {
			fg = colors.fg,
			bg = colors.bg,
		},
	},
	filename = {
		"filename",
		color = {
			bg = colors.none,
			fg = colors.fg,
		},
	},
}
require("lualine").setup {
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "NvimTree", "toggleterm" },
		always_divide_middle = false,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = { { "filetype" } },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
}
