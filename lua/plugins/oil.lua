function toggle()
    local util = require("oil.util")
    if util.is_oil_bufnr(0) then
        require("oil").close()
    else
        require("oil").open()
    end
end

return {
    "stevearc/oil.nvim",
    opts = {
        columns = {},
        keymaps = {
            ["<ESC>"] = "actions.close",
            ["<bs>"] = "actions.parent",
        },
    },
    cmd = "Oil",
    keys = {
        { "<leader>e", toggle, desc = "Oil" },
    },
}
