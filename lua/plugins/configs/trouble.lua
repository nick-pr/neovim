local map = vim.keymap.set

require("trouble").setup {}

-- Mappings
map({ "n", "i" }, "<leader>tt", "<cmd>TroubleToggle<CR>")
