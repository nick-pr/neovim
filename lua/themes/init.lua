local M = {}

M.init = function(colorscheme)
    local ok, theme = pcall(require, "themes." .. colorscheme)

    if not ok then
        vim.print("COULD NOT LOAD THEME:" .. theme)
        return
    end

    vim.cmd("hi clear")
    vim.g.colors_name = colorscheme

    for group_name, opt in pairs(theme) do
        vim.api.nvim_set_hl(0, group_name, opt)
    end
end

return M
