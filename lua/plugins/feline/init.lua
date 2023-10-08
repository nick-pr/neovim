local p = require("theme.palette")
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

local file_tree_components = {
    active = Bar:new(),
    inactive = Bar:new(),
}

winbar_components.active:append(1, components.file_info)
winbar_components.active:append(1, components.lsp_locations)
winbar_components.active:append(1, { provider = "", hl = { bg = "none" } })

winbar_components.inactive:append(1, components.file_info)
winbar_components.inactive:append(1, { provider = "", hl = { bg = "none" } })

----File Tree Bar -------
file_tree_components.active:append(1, {
    provider = "󰙅 ",
    hl = { bg = "blue_500" },
    left_sep = { str = " ", hl = { fg = "bg", bg = "blue_500" } },
    -- right_sep = { str = "right_rounded", hl = { fg = "blue_500", bg = "bg" } },
})
file_tree_components.active:append(1, {
    provider = {
        name = "cwd_parent_dir",
        update = { "DirChanged" },
    },
    hl = { style = "bold" },
    -- icon = { str = utils.icon_from_hex "fb44" .. " ", hl = { fg = "orange_300" } },
    left_sep = { str = " ", hl = { fg = "bg", bg = "bg" } },
})
file_tree_components.active:append(3, {
    provider = " ",
    hl = { bg = "bg" },
    right_sep = { str = " ", hl = { fg = "bg", bg = "bg" } },
})

return {
    "freddiehaddad/feline.nvim",
    opts = {
        winbar = {
            components = winbar_components,
            conditional_components = {
                {
                    condition = function()
                        return vim.api.nvim_buf_get_option(0, "filetype") == "NvimTree"
                    end,
                    active = file_tree_components.active,
                    inactive = file_tree_components.active,
                },
            },
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
