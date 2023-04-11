local feline = require("feline")
local p = require("theme.palette")

return vim.tbl_extend("force", p, { bg = p.dark_3, bg_light = p.dark_4 })
