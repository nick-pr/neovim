function toggle()
    local oil = require("oil")
    oil.open()
end

return {
    "stevearc/oil.nvim",
    enabled = true,
    opts = {
        -- float = {
        --     padding = 0,
        --     win_options = {
        --         winblend = 0,
        --     },
        -- },
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = false,
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
