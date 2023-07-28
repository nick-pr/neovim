return {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NeoTree" },
    },
    opts = {
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
    },
    config = true,
}
