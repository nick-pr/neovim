return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "rust_analyzer", "lua_ls", "gopls", "pyright", "html" },
    },
}
