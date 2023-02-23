local M = { "nvim-tree/nvim-tree.lua" }

M.dependencies = { "nvim-tree/nvim-web-devicons" }

M.keys = {
	{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NeoTree" },
}

M.config = true

M.opts = {
	view = {
		preserve_window_proportions = true,
	},
    actions = {
        open_file = {
            resize_window = false,
        },
    },
    sync_root_with_cwd = true,
}

return M
