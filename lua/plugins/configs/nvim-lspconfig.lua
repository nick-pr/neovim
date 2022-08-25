local map = vim.keymap.set

vim.diagnostic.config {
	virtual_text = false,
	float = {
		border = "rounded",
	},
	signs = {
		severity_sort = true,
		priority = 2,
	},
	underline = false,
	update_in_insert = true,
	severity_sort = false,
}

-- Set Icons and Colors
-- local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

-- Mappings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("n", "<space>e", vim.diagnostic.open_float, { noremap = true, silent = true })
map("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true })
map("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true })
map("n", "<space>rn", vim.lsp.buf.rename, { noremap = true, silent = true })

-- TSServer
require("lspconfig").tsserver.setup {}

-- Rust-analyzer
require("lspconfig").rust_analyzer.setup {}
