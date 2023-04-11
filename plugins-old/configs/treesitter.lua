require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "vim", "go", "help", "gitcommit" },
    auto_install = false,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    playground = {
        enable = true,
    },
})
