return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    opts = {
        winopts = {
            border = "single",
            fullscreen = false,
        },
        file_ignore_patterns = { "/opt/homebrew/", "node_modules/" },
        files = {
            previewer = false,
            file_icons = true,
            git_icons = false,
        },
    },
    config = function(lazy, opts)
        local map = vim.keymap.set
        require("fzf-lua").setup(opts)
        map("n", "<leader>ff", "<cmd>Fzf files<CR>", { noremap = true })
        map("n", "<leader>fb", "<cmd>Fzf buffers<CR>", { noremap = true })
    end,
}
