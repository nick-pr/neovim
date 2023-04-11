local M = { "nvim-tree/nvim-tree.lua" }

M.enabled = true

M.dependencies = { "nvim-tree/nvim-web-devicons" }

M.keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NeoTree" },
}

M.config = true

M.opts = {
    sync_root_with_cwd = true,

    view = {
        preserve_window_proportions = true,
        hide_root_folder = true,
        float = {
            enable = false,
        },
    },
    renderer = {
        icons = {
            padding = "  ",
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
