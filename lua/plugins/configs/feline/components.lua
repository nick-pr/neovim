local utils = require "core.utils"
local vi_mode_color = require("feline.providers.vi_mode").get_mode_color

local components = {}

components.pwd = {
	provider = {
		name = "relative_pwd",
	},
	hl = { fg = "orange_300" },
	icon = {
		str = " ",
		hl = { fg = "orange_300" },
	},
	left_sep = " ",
}

components.relative_file_name = {
	-- Parent file path
	{
		provider = {
			name = "parent_file_path",
		},
		hl = {
			bg = "dark_4",
		},
		icon = {
			str = " ﬌ ",
			always_visible = true,
		},
	},
	-- File name
	{
		provider = {
			name = "file_info",
			opts = {
				type = "base_only",
			},
		},
		hl = {
			fg = "orange_300",
            bg = "dark_4"
		},
		icon = "",
		right_sep = {
			str = "right_rounded",
			hl = { fg = "dark_4", bg = "none" },
		},
	},
}

components.git_info = {
	-- Git Add
	{
		provider = "git_diff_added",
		hl = {
			fg = "green_300",
			bg = "bg_normal",
		},
		icon = {
			-- str = utils.icon_from_hex "f915",
			str = "+",
			hl = {
				fg = "green_300",
				bg = "none",
			},
		},
		left_sep = {
			str = " ",
			hl = {
				bg = "none",
			},
		},
	},
	-- Git Changed
	{
		provider = "git_diff_changed",
		hl = {
			fg = "orange_300",
			bg = "none",
		},
		icon = {
			-- str = utils.icon_from_hex "f9c9",
			str = "~",
			hl = {
				fg = "orange_300",
				bg = "none",
			},
		},
		left_sep = {
			str = " ",
			hl = {
				bg = "none",
			},
		},
	},
	-- Git Removed
	{
		provider = "git_diff_removed",
		hl = {
			fg = "red_400",
			bg = "none",
		},
		icon = {
			-- str = utils.icon_from_hex "f146" .. " ",
			str = "-",
			hl = {
				fg = "red_400",
				bg = "none",
			},
		},
		left_sep = {
			str = " ",
			hl = {
				bg = "none",
			},
		},
	},
}

components.vi_mode = {
	provider = {
		name = "vi_mode",
		opts = {
			show_mode_name = true,
		},
	},
	hl = function()
		return {
			name = require("feline.providers.vi_mode").get_mode_highlight_name(),
			fg = require("feline.providers.vi_mode").get_mode_color(),
			bg = "bg_light",
			style = "bold",
		}
	end,
	icon = {
		-- str = "[]MODE:",
		-- hl = { fg = "fg_dark" },
		str = "",
		always_visible = true,
	},
	left_sep = {
		str = " ",
		hl = { bg = "bg_light" },
	},
	right_sep = {
		str = "right_rounded",
		hl = { fg = "bg_light" },
	},
}

components.git_branch = {
	provider = "git_branch",
	left_sep = {
		str = " ",
		hl = { bg = "purple_700" },
	},
	right_sep = {
		str = "right_rounded",
		hl = { fg = "purple_700", bg = "dark_3" },
	},
	hl = {
		bg = "purple_700",
		fg = "white",
	},
}

components.lsp_status = {
	provider = "lsp_client_names",
	hl = { fg = "purple_350" },
	right_sep = {
		str = " ",
		hl = { fg = "fg" },
	},
	-- left_sep = {
	-- 	str = "[",
	-- 	hl = { fg = "fg" },
	-- },
}

components.lsp_errors = {
	provider = "diagnostic_errors",
	hl = { bg = "none" },
}
components.lsp_warnings = {
	provider = "diagnostic_errors",
	hl = { bg = "none" },
}
components.lsp_hints = {
	provider = "diagnostic_errors",
	hl = { bg = "none" },
}

components.git_changes = { components.git_added, components.git_changed, components.git_removed }

return components
