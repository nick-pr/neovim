local modes = {
    ["n"] =  { str = "NORMAL", hlgroup = "ViModeComponentNormal" },
    ["no"] = { str = "NORMAL", hlgroup = "ViModeComponentNormal" },
    ["v"] =  { str = "VISUAL", hlgroup = "ViModeComponentVisual" },
    ["V"] =  { str = "V-LINE", hlgroup = "ViModeComponentVisualLine" },
    ["i"] =  { str = "INSERT", hlgroup = "ViModeComponentInsert" },
    ["ic"] = { str = "INSERT", hlgroup = "ViModeComponentInsert" },
    ["c"] =  { str = "CMD-LN", hlgroup = "ViModeComponentCmd"}, 
    [""] = "VISUAL-BLOCK",
    ["s"] = "SELECT",
    ["S"] = "SELECT-LINE",
    [""] = "SELECT-BLOCK",
    ["R"] = "REPLACE",
    ["Rv"] = "VISUAL-REPLACE",
    ["cv"] = "VIM EX",
    ["ce"] = "EX",
    ["r"] = { str = "PROMPT", hlgroup="ViModeComponentPrompt"},
    ["rm"] = "MOAR",
    ["r?"] = "CONFIRM",
    ["!"] = "SHELL",
    ["t"] = {str = "TERMINAL", hlgroup = "ViModeComponentTerm"},
}
local function mode()
    local mode = modes[vim.api.nvim_get_mode().mode]

    if not mode then
        return ""
    end

    return table.concat({
        "%#", mode.hlgroup, "#",
        " ",mode.str," "
    })
end

local function pwd() 
    local cwd =vim.fn.fnamemodify(vim.loop.cwd(), ":~")

    return table.concat({
        "%#PwdComponent# ",cwd
    })
end

function statusline()
    return table.concat({
        mode(),
        pwd(),
        -- " [%f]"
    })
end

vim.opt.statusline = "%{%v:lua.statusline()%}"
