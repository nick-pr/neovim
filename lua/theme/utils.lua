local M = {}

M.highlight= function(group,opt)
    local fg = opt.fg and "guifg="..opt.fg.." " or " "
    local bg = opt.bg and "guibg="..opt.bg.." " or " "
    local gui = opt.gui and "gui="..opt.gui.." " or " "
    vim.cmd("highlight "..group.." "..fg..bg..gui)
    -- print("highlight "..group.." "..fg..bg)
end

return M
