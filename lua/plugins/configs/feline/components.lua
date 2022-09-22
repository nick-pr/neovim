local utils = require "core.utils"
local vi_mode_color = require("feline.providers.vi_mode").get_mode_color

local components = {}

components.pwd = {
	provider = {
		name = "relative_pwd",
	},
	hl = { fg = "orange" },
	icon = {
		str = "[]PWD:",
		hl = { fg = "fg_dark" },
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
			fg = require("feline.providers.vi_mode").get_mode_color(),
			bg = "light_bg",
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
		hl = { bg = "light_bg" },
	},
	right_sep = {
		str = "right_rounded",
		hl = { fg = "light_bg" },
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
	hl = function()
		local attached_lsp = require("feline.providers.lsp").is_lsp_attached()
		local hl = {}
		if attached_lsp then
			hl.fg = "green"
		else
			hl.fg = "red"
		end
		return hl
	end,
	right_sep = {
		str = " ",
		hl = { fg = "fg" },
	},
	-- left_sep = {
	-- 	str = "[",
	-- 	hl = { fg = "fg" },
	-- },
	icon = {
		str = "[]LSP:",
		-- str = "LSP:",
		hl = {
			fg = "fg_dark",
		},
	},
}

components.git_changes = { components.git_added, components.git_changed, components.git_removed }

return components
