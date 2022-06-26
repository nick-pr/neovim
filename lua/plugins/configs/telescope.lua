local map = vim.keymap.set

-- Setup
require("telescope").setup()

-- Mappings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")

-- Telescope extensions
require("telescope").load_extension "fzf"
