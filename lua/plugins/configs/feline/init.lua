local theme = require "plugins.configs.feline.colors"
local utils = require "core.utils"
local components = require "plugins.configs.feline.components"

Bar = {}
MetaBar = {}
MetaBar.__index = Bar

function Bar.new()
	local instance = setmetatable({}, MetaBar)
	instance.components = { {}, {}, {} }
	return instance
end

function Bar:append_component(index, component)
	if component[1] == nil then
		table.insert(self.components[index], component)
	else
		for i, comp in ipairs(component) do
			table.insert(self.components[index], comp)
		end
	end
end

local statusline = {
	active = Bar:new(),
	inactive = Bar:new(),
}
local winbar = {
	active = Bar:new(),
	inactive = Bar:new(),
}

local file_tree = {
	active = Bar:new(),
	inactive = Bar:new(),
}

------ Statusline -----
statusline.active:append_component(1, components.vi_mode)
statusline.active:append_component(1, components.pwd)
statusline.active:append_component(3, components.lsp_status)
statusline.active:append_component(
	3,
	{ provider = "", right_sep = { str = "block", always_visible = true, hl = { fg = "dark_3", bg = "none" } } }
)

statusline.inactive:append_component(1, {})

------ Winbar -------
winbar.active:append_component(1, components.relative_file_name)
winbar.active:append_component(1, components.git_info)

winbar.inactive:append_component(1, components.relative_file_name)
winbar.inactive:append_component(1, components.git_info)

------ File Tree Bar -------
file_tree.active:append_component(1, { provider = "", hl = { bg = "dark_4" } })
file_tree.active:append_component(2, {
	provider = "File Tree",
	icon = { str = utils.icon_from_hex "fb44" .. " " },
	-- left_sep = { str = "left_rounded", hl = { bg = "dark_1", fg = "dark_4" } },
	-- right_sep = { str = "right_rounded", hl = { bg = "dark_1", fg = "dark_4" } },
})
file_tree.active:append_component(3, { provider = "", hl = { bg = "dark_4" } })

------ Setup ------
require("feline").setup {
	components = {
		active = statusline.active.components,
		inactive = statusline.inactive.components,
	},
	theme = theme,
	vi_mode_colors = {
		NORMAL = "blue_400",
		COMMAND = "orange_400",
		INSERT = "red_400",
	},
	custom_providers = {
		parent_file_path = function(comp, opts)
			local path_to_parent = vim.fn.expand "%:.:h"

			if path_to_parent == "." or path_to_parent == "" then
				return ""
			end

			return path_to_parent .. "/"
		end,

		file_name = function(comp, opts)
			local file_name = vim.fn.expand "%:t"
			return file_name
		end,

		relative_pwd = function(comp, opts)
			return vim.fn.fnamemodify(vim.fn.getcwd(), ":~")
		end,

		lsp_info = function()
			local attached_lsp = require("feline.providers.lsp").is_lsp_attached()
			if attached_lsp then
				-- local lsp_client_name = require("feline.providers.lsp").lsp_client_names()
				return "online"
			else
				return "offline"
			end
		end,
	},
}

require("feline").winbar.setup {
	components = {
		active = winbar.active.components,
		inactive = winbar.inactive.components,
	},
	conditional_components = {
		{
			condition = function()
				return vim.api.nvim_buf_get_option(0, "filetype") == "NvimTree"
			end,
			active = file_tree.active.components,
			inactive = file_tree.active.components,
		},
	},
	disable = {
		filetypes = {
			"^packer$",
		},
		buftypes = {
			"^terminal$",
		},
		bufnames = {},
	},
}
