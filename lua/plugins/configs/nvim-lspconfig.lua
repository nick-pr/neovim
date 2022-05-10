vim.diagnostic.config {
	virtual_text = false,
	signs = true,
	underline = false,
	update_in_insert = true,
	severity_sort = false,
}

-- TSServer
require("lspconfig").tsserver.setup {}

-- ESLint
-- require("lspconfig").eslint.setup {}

-- Rust-analyzer
require("lspconfig").rust_analyzer.setup {}
