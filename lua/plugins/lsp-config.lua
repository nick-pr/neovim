local M = { "neovim/nvim-lspconfig" }

M.config = function(opts)
	local lspconfig = require "lspconfig"

	vim.diagnostic.config {
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
		severity_sort = false,
	}

	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	local opts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<Leader>d", ":lua vim.diagnostic.open_float()<CR>", opts)

	-- Gopls LSP setup
	lspconfig.gopls.setup {
		cmd = { "gopls"},
		capabilities = capabilities,
		init_options = {
			staticcheck = true,
		},
	}
end

return M
