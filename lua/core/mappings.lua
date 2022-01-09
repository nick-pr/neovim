local utils = require "core.utils"
local map = utils.map

map("v", "<S-j>", "<cmd>m .+1<CR>==", { silent = true })

-- Better Indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Better Pasting (Indent)
map({ "v", "n" }, "p", "]p")
map({ "v", "n" }, "<S-p>", "[p")

-- Buffers
map("n", "<leader>bs", "<cmd>source %<CR>", { noremap = true, silent = true })
map("n", "<leader>bo", "<cmd>silent !open %<CR>", { noremap = true, silent = true })

-- Sick backspace map
map("n", "<bs>", "<C-^>zz", { noremap = true, silent = true })

-- Nvim Tree
map({ "v", "i", "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })

-- Packer
map("n", "<leader>ps", "<cmd>PackerSync<CR>", { noremap = true, silent = true })

-- Telescope
map("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<CR>')
map("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<CR>')
map("n", "<leader>fe", '<cmd>lua require("telescope.builtin").file_browser()<CR>')

-- Format
map({ "n", "v" }, "<leader>bf", "<cmd>Format<CR>", { noremap = true, silent = true })

-- LSP
map({ "n" }, "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Trouble
map({ "n", "i" }, "<leader>tt", "<cmd>TroubleToggle<CR>")

-- Terminal
map("t", "<ESC>", "<C-\\><C-n>")
map("t", "<C-w>j", "<C-\\><C-n><C-w>j")
map("t", "<C-w>k", "<C-\\><C-n><C-w>k")
map("t", "<C-w>h", "<C-\\><C-n><C-w>h")
map("t", "<C-w>l", "<C-\\><C-n><C-w>l")

map("t", "<C-w><Down>", "<C-\\><C-n><C-w><Down>")
map("t", "<C-w><Up>", "<C-\\><C-n><C-w><Up>")
map("t", "<C-w><Left>", "<C-\\><C-n><C-w><Left>")
map("t", "<C-w><Right>", "<C-\\><C-n><C-w><Right>")
