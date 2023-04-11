local map = vim.keymap.set

require("trouble").setup({
    position = "bottom",
    mode = "document_diagnostics",
    group = false,
    padding = false,
    indent_lines = false,
})

-- Mappings
map({ "n", "i" }, "<leader>tt", "<cmd>TroubleToggle<CR>")
