local fzf = require "fzf-lua"
local map = vim.keymap.set

-- Setup
fzf.setup {
    files = {
        previewer = false,
    }
}

-- Mappings
map("n", "<leader>ff", fzf.files, { noremap = true })

