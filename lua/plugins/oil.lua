function toggle()
    local oil = require("oil")
    oil.toggle_float()
end

return {
    "stevearc/oil.nvim",
    opts = {
        columns = {},
        keymaps = {
            ["<ESC>"] = "actions.close",
            ["q"] = "actions.close",
            ["<bs>"] = "actions.parent",
        },
    },
    cmd = "Oil",
    keys = {
        { "<leader>e", toggle, desc = "Oil" },
    },
}
