return {
    url = "https://gitlab.com/ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        "max-perf",
        winopts = {
            fullscreen = true,
            border = "single",
        },
        file_ignore_patterns = { "/opt/homebrew/", "node_modules/", "target/" },
        files = {
            previewer = false,
            cwd_prompt = false,
            find_opts = "-type f",
        },
        buffers = {
            previewer = false,
        },
    },

    config = function(_, opts)
        local map = vim.keymap.set
        require("fzf-lua").setup(opts)
        map("n", "<leader>ff", "<cmd>Fzf files<CR>", { noremap = true })
        map("n", "<leader>fb", "<cmd>Fzf buffers<CR>", { noremap = true })
        map("n", "<leader>ds", "<cmd>Fzf lsp_document_symbols<CR>", { noremap = true })
        map("n", "<leader>ws", "<cmd>Fzf lsp_workspace_symbols<CR>", { noremap = true })
    end,
}
