-- Bootstrapping Lazy Plugin Manager
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
local lazy_installed = vim.loop.fs_stat(lazypath)
if not lazy_installed then
	vim.fn.system {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Call Modules
require "core"
require("lazy").setup("plugins", {
	install = {
		colorscheme = { "argon" },
	},
	ui = { border = "single" },
	change_detection = { notify = false },
})
pcall(require, "override")

-- Set colorscheme
vim.cmd "colorscheme argon"
