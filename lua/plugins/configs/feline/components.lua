local utils = require "core.utils"
local colors = require "plugins.configs.feline.colors"
local vi_mode_color = require("feline.providers.vi_mode").get_mode_color

local components = {}

components.file_path = {
	provider = {
		name = "file_info",
		opts = {
			type = "relative",
		},
	},
	hl = {
		bg = colors.bg,
	},
	icon = "﬌",
}

components.git_added = {
	provider = "git_diff_added",
	icon = {
		str = utils.icon_from_hex "f915",
		hl = {
			fg = "green",
		},
	},
	left_sep = {
		str = " ",
	},
	right_sep = {
		str = " ",
	},
}

components.git_changed = {
	provider = "git_diff_changed",
	icon = {
		str = utils.icon_from_hex "f9c9",
		hl = {
			fg = "orange",
		},
	},
	right_sep = {
		str = " ",
	},
}
components.git_removed = {
	provider = "git_diff_removed",
	icon = {
		str = utils.icon_from_hex "f146" .. " ",
		hl = {
			fg = "red",
		},
	},
	right_sep = {
		str = " ",
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
			fg = colors.bg,
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
		hl = { bg = colors.bg },
	},
	hl = {
		fg = colors.light_purple,
		bg = colors.bg,
	},
}

components.lsp_status = {
	provider = function()
		local attached_lsp = require("feline.providers.lsp").is_lsp_attached()
		if attached_lsp then
			local lsp_client_name = require("feline.providers.lsp").lsp_client_names()
			return lsp_client_name
		else
			return ""
		end
	end,
	icon = {
		str = " ",
	},
	hl = {
		bg = colors.bg,
	},
}

return components
