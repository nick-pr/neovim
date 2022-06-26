local map = vim.keymap.set

-- Setup
require("nvim-tree").setup {
	update_cwd = true,
}

-- Mappings
map({ "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })
