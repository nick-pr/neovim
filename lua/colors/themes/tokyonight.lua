local colors = require("tokyonight.colors").setup {}
local utils = require "core.utils"
local color_utils = require "colors.utils"

vim.g.tokyonight_style = "night"
vim.cmd [[colorscheme tokyonight]]
vim.cmd("hi NvimTreeOpenedFolderName guifg=" .. colors.yellow)
-- vim.cmd('hi TSType guifg='..colors.yellow)
-- vim.cmd('hi TSTypeBuiltin guifg='..colors.red)

local api = vim.api

local definitions = {
	{ "BufEnter", "*.rs", "hi TSField guifg=" .. colors.red },
}
return colors
