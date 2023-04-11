local M = { "neovim/nvim-lspconfig" }

function all_on_attach()
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<Leader>d", ":lua vim.diagnostic.open_float()<CR>", opts)
end

function gopls_on_attach()
    all_on_attach()
end

function rust_on_attach()
    all_on_attach()
end

M.config = function(opts)
    local lspconfig = require("lspconfig")

    -- Setting the border of LspInfo
    require("lspconfig.ui.windows").default_options.border = "single"

    -- Diagnostic configuration
    vim.diagnostic.config({
        virtual_text = false,
        float = {
            border = "single",
        },
        signs = {
            severity_sort = true,
            priority = 2,
        },
        underline = false,
        update_in_insert = true,
        severity_sort = true,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Gopls LSP setup
    lspconfig.gopls.setup({
        cmd = { "gopls", "--remote=auto" },
        capabilities = capabilities,
        on_attach = gopls_on_attach,
        init_options = {
            staticcheck = true,
        },
    })

    -- Rust Analyzer setup
    lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        on_attach = rust_on_attach,
    })
end

return M
