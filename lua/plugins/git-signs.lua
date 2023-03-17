local M = { "lewis6991/gitsigns.nvim" }

M.opts = {
    signcolumn = false,
}

M.config = function(lazy_plugin, opts)
	local gitsigns = require "gitsigns"
	local map = vim.keymap.set

	gitsigns.setup(opts)

	local map_opts = { noremap = true }
	map({ "n" }, "gb", "<cmd>Gitsigns blame_line<CR>", map_opts)
end
return M
