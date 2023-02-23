return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require "null-ls"
		null_ls.setup {
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofmt,
			},
		}
		vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { noremap = true })
	end,
}
