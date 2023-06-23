return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "FzfLua Files" },
    },
    opts = {
        "max-perf",
        file_ignore_patterns = { "/opt/homebrew/", "node_modules/" },
        files = {
            previewer = false,
        },
    },

    config = function(lazy, opts)
        local map = vim.keymap.set
        require("fzf-lua").setup(opts)
        map("n", "<leader>ff", "<cmd>Fzf files<CR>", { noremap = true })
        map("n", "<leader>fb", "<cmd>Fzf buffers<CR>", { noremap = true })
    end,
}
