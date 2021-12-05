require('lspconfig').tsserver.setup{
    handlers = {
        ["textDocument/publishDiagnostics"]  = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false
        }
        ),
    }
}