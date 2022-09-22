local map = vim.keymap.set
local fzf = require "fzf-lua"

fzf.setup {
	winopts = {
		border = "thicc",
		fullscreen = true,
		preview = {
			layout = "vertical",
			hidden = "hidden",
		},
	},
	fzf_opts = {
		["--pointer"] = "*",
	},
	files = {
		git_icons = false,
		prompt = "Files: ",
	},
}

-- Mappings
map("n", "<leader>ff", fzf.files, { noremap = true })
