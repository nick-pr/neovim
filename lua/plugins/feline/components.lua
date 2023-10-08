local p = require("theme/palette")
local M = {}

M.file_info = {
    provider = {
        name = "file_info",
        opts = { type = "relative" },
    },
    hl = { style = "bold", bg = "none" },
    left_sep = { str = " ", hl = { bg = "none" } },
}

M.lsp_locations = {
    provider = "lsp_locations",
    hl = { style = "bold", bg = "none" },
    left_sep = { str = "  ", hl = { bg = "none"} },
}

return M
