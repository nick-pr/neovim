local map = vim.keymap.set

-- Setup
require("nvim-tree").setup {
	update_cwd = true,
	renderer = {
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
            show = {
                folder_arrow = false
            }
        }
	},
}

-- Mappings
map({ "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })
