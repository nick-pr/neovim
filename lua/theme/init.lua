local highlights = require("theme.highlights")

local M = {}

M.init = function()
    for group_name, opt in pairs(highlights.dark) do
        vim.api.nvim_set_hl(0, group_name, opt)
    end
end

return M
