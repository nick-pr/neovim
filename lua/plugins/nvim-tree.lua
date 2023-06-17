local M = { "nvim-tree/nvim-tree.lua" }

M.enabled = false

M.dependencies = { "nvim-tree/nvim-web-devicons" }

M.keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NeoTree" },
}

M.config = true

M.opts = {
    sync_root_with_cwd = true,

    view = {
        preserve_window_proportions = true,
        float = {
            enable = false,
        },
    },
    renderer = {
        root_folder_label = false,
        icons = {
            padding = " ",
        },
    },
    actions = {
        open_file = {
            resize_window = false,
        },
    },
    git = {
        enable = false,
        timeout = 3000,
    },
}

return M
