local p = {}
local utils = require("core.utils")
local custom_providers = require("plugins/feline/custom_providers")
local components = require("plugins/feline/components")

Bar = {}
MetaBar = {}
MetaBar.__index = Bar

function Bar.new()
    local instance = setmetatable({ {}, {}, {} }, MetaBar)
    return instance
end

function Bar:append(index, component)
    if component[1] == nil then
        table.insert(self[index], component)
    else
        for i, comp in ipairs(component) do
            table.insert(self[index], comp)
        end
    end
end

local winbar_components = {
    active = Bar:new(),
    inactive = Bar:new(),
}

winbar_components.active:append(1, components.file_info)
winbar_components.active:append(1, components.lsp_locations)
winbar_components.active:append(1, { provider = "", hl = { bg = "none" } })

winbar_components.inactive:append(1, components.file_info)
winbar_components.inactive:append(1, { provider = "", hl = { bg = "none" } })


return {
    "freddiehaddad/feline.nvim",
    enabled = false,
    opts = {
        winbar = {
            components = winbar_components,
        },
        statusline = {
            theme = vim.tbl_extend("force", p, { bg = "#272728" }),
            custom_providers = custom_providers,
        },
    },

    config = function(lazy_plugin, opts)
        local feline = require("feline")
        feline.setup(opts.statusline)
        feline.winbar.setup(opts.winbar)
    end,
}
