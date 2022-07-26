local utils = require "core.utils"
local components = require "plugins.configs.feline.components"
local colors = require "plugins.configs.feline.colors"

local statusline = {
	active = { {}, {}, {} },
	inactive = { {}, {}, {} },
}

local winbar = {
	active = { {}, {}, {} },
	inactive = { {}, {}, {} },
}

------ Statusline -----

-- Active
table.insert(statusline.active[1], components.vi_mode)
table.insert(statusline.active[1], components.git_branch)
table.insert(statusline.active[1], { hl = { bg = colors.bg } })

table.insert(statusline.active[3], components.lsp_status)

-- Inactive
table.insert(statusline.inactive[1], { hl = { bg = colors.bg } })

----- Winbar ----

-- Active
table.insert(winbar.active[1], components.file_path)
table.insert(winbar.active[1], components.git_added)
table.insert(winbar.active[1], components.git_changed)
table.insert(winbar.active[1], components.git_removed)
table.insert(winbar.active[1], { hl = { bg = "none" } })

-- Inactive
table.insert(winbar.inactive[1], components.file_path)
table.insert(winbar.inactive[1], { hl = { bg = "none" } })

------ Setup ------

require("feline").setup {
	components = statusline,
}

require("feline").winbar.setup {
	components = winbar,
	disable = {
		filetypes = {
			"^NvimTree$",
		},
		buftypes = {
			"^terminal$",
		},
		bufnames = {},
	},
    default_bg = colors.bg
}
