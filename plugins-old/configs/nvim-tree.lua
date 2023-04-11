local map = vim.keymap.set

local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 30
local height = 30

-- Setup
require("nvim-tree").setup({
    update_cwd = true,
    view = {
        hide_root_folder = true,
        mappings = {
            list = {
                { key = "<ESC>", action = "close" },
            },
        },
        adaptive_size = true,
        signcolumn = "yes",
        float = {
            enable = false,
        },
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
})

-- Mappings
map({ "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })
