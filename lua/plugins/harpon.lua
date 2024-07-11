local M = { "ThePrimeagen/harpoon" }
local map = vim.keymap.set

M.config = function()
    local harpoon_mark = require("harpoon.mark")
    local harpoon_ui = require("harpoon.ui")

    local opts = { noremap = true, silent = true }
    map("n", "<leader>a", harpoon_mark.add_file, opts)
    map("n", "<leader>h", harpoon_ui.toggle_quick_menu, opts)
end

return M
