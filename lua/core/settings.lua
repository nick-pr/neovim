local set = vim.opt

set.fillchars = {
	horiz = "━",
	horizup = "┻",
	horizdown = "┳",
	vert = "┃",
	vertleft = "┫",
	vertright = "┣",
	verthoriz = "╋",
}

set.title = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.mouse = "a"
set.number = true
set.hidden = true
set.scrolloff = 3
set.signcolumn = "yes:1"
set.swapfile = false
set.splitright = true
set.termguicolors = true
set.laststatus = 3
set.showmode = false
set.linebreak = true
set.cursorline = true
set.relativenumber = true

vim.api.nvim_create_autocmd("BufEnter", { command = "set formatoptions-=o" })
