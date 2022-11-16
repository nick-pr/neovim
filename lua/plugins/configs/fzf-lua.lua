local fzf = require "fzf-lua"
local map = vim.keymap.set

-- Setup
fzf.setup {
	winopts = {
		border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
	},
	files = {
		previewer = false,
	},
}

-- Mappings
map("n", "<leader>ff", fzf.files, { noremap = true })
map("n", "<leader>fc", fzf.colorschemes, { noremap = true })
