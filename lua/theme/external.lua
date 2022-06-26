local packer = require "plugins.packerInit"
local use = packer.use

-- Kanagawa
use {
	"rebelot/kanagawa.nvim",
	config = require "theme.configs.kanagawa",
	cond = function()
		return vim.g.config.colorscheme == "kanagawa"
	end,
}

use {
	"~/dev/projects/adwaita-nvim",
	config = require "theme.configs.adwaita",
	cond = function()
		return vim.g.config.colorscheme == "adwaita_local"
	end,
}
