-- local p = require("themespalette")
local p = {}
local M = {}

M.file_info = {
    provider = {
        name = "file_info",
        opts = { type = "relative" },
    },
    hl = "FileInfoComponent",
    icon = {str = "" , hl="FileInfoComponentIcon"},
    left_sep = { str = " ", hl =  "FileInfoComponentLeftSep"},
}

M.lsp_locations = {
    provider = "lsp_locations",
    hl = "LspLocationComponent",
    left_sep = { str = "  ", hl = "LspLocationComponentLeftSep" },
}

return M
