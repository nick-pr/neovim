local map = vim.keymap.set
local actions = require("telescope.actions")

-- Setup
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
        },
    },
}

-- Mappings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")

-- Telescope extensions
require("telescope").load_extension "fzf"
