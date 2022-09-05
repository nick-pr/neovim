local utils = require "core.utils"
local vi_mode_color = require("feline.providers.vi_mode").get_mode_color

local components = {}

components.pwd = {
	provider = {
		name = "relative_pwd",
	},
	left_sep = " ",
}

components.parent_file_path = {
	provider = {
		name = "parent_file_path",
	},
	hl = {
		fg = "fg_dark",
		bg = "bg_normal",
	},
	icon = {
		str = "﬌ ",
		hl = {
			bg = "bg_normal",
		},
		always_visible = true,
	},
}

components.file_name = {
	provider = {
		name = "file_info",
		opts = {
			type = "base_only",
		},
	},
	hl = {
		bg = "bg_normal",
	},
	icon = "",
}

components.git_added = {
	provider = "git_diff_added",
	hl = {
		fg = "green",
		bg = "bg_normal",
	},
	icon = {
		-- str = utils.icon_from_hex "f915",
		str = "+",
		hl = {
			fg = "green",
			bg = "bg_normal",
		},
	},
	left_sep = {
		str = " ",
		hl = {
			bg = "bg_normal",
		},
	},
}

components.git_changed = {
	provider = "git_diff_changed",
	hl = {
		fg = "orange",
		bg = "bg_normal",
	},
	icon = {
		-- str = utils.icon_from_hex "f9c9",
		str = "~",
		hl = {
			fg = "orange",
			bg = "bg_normal",
		},
	},
	left_sep = {
		str = " ",
		hl = {
			bg = "bg_normal",
		},
	},
}
components.git_removed = {
	provider = "git_diff_removed",
	hl = {
		fg = "red",
		bg = "bg_normal",
	},
	icon = {
		-- str = utils.icon_from_hex "f146" .. " ",
		str = "-",
		hl = {
			fg = "red",
			bg = "bg_normal",
		},
	},
	left_sep = {
		str = " ",
		hl = {
			bg = "bg_normal",
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
			bg = require("feline.providers.vi_mode").get_mode_color(),
			fg = "bg",
			style = "bold",
		}
	end,
	right_sep = {
		str = " ",
		hl = function()
			return {
				bg = vi_mode_color(),
			}
		end,
	},
	icon = {
		str = "",
		always_visible = true,
	},
	left_sep = {
		str = " ",
		hl = function()
			return {
				bg = vi_mode_color(),
			}
		end,
		always_visible = true,
	},
}

components.git_branch = {
	provider = "git_branch",
	left_sep = {
		str = " ",
	},
	hl = {
		fg = "fuchsia",
	},
}

components.lsp_status = {
	provider = "lsp_info",
	right_sep = {
		str = " ",
	},
	icon = {
		str = " ",
	},
}

components.git_changes = { components.git_added, components.git_changed, components.git_removed }

return components
