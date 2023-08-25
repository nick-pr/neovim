return {
    "stevearc/oil.nvim",
    enabled = true,
    config = function(_, opts)
        local oil = require("oil")
        oil.setup(opts)
        vim.keymap.set("n", "<leader>e", oil.open, { noremap = true, silent = true })
    end,
    opts = {
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = false,
        columns = {},
        keymaps = {
            ["<ESC>"] = "actions.close",
            ["q"] = "actions.close",
            ["<bs>"] = "actions.parent",
        },
    },
}
