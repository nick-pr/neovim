local map = vim.keymap.set

-- Setup
require("nvim-tree").setup {
	update_cwd = true,
	view = {
		adaptive_size = true,
		signcolumn = "yes",
	},
	renderer = {
		root_folder_modifier = ":t:r",
		indent_markers = {
			enable = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				none = " ",
			},
		},
		icons = {
			git_placement = "signcolumn",
			show = {
				folder_arrow = false,
			},
		},
	},
}

-- Mappings
map({ "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })
