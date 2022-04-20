local map = vim.keymap.set

-- Better Indenting
map("v", "<", "<gv")
map("v", ">", ">gv")
map("v", ">", ">gv")

-- Yanking
map({ "n" }, "<leader>yy", '"*yy', { noremap = true, silent = true })
map({ "v" }, "<leader>y", '"*y', { noremap = true, silent = true })

-- Moving lines
map({ "i" }, "<C-j>", "<esc>:m .+1<CR>==i", { noremap = true , silent= true})
map({ "i" }, "<c-k>", "<esc>:m .-2<cr>==i", { noremap = true, silent= true })
map({ "v" }, "J", ":m '>+1<cr>gv=gv", { noremap = true , silent = true})
map({ "v" }, "K", ":m '<-2<cr>gv=gv", { noremap = true , silent= true})

-- pasting
map({ "v", "n" }, "p", "]p", { noremap = true, silent = true })
map({ "v", "n" }, "<S-p>", "[p", { noremap = true, silent = true })
map({ "v", "n" }, "<leader>p", '"*]p', { noremap = true, silent = true })
map({ "v", "n" }, "<leader><S-p>", '"*[p', { noremap = true, silent = true })

-- Buffers
map("n", "<leader>bs", "<cmd>source %<CR>", { noremap = true, silent = true })
map("n", "<leader>bo", "<cmd>silent !open %<CR>", { noremap = true, silent = true })

-- Sick backspace map
map("n", "<bs>", "<C-^>zz", { noremap = true, silent = true })

-- Nvim Tree
map({ "v", "i", "n" }, "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, noremap = true })

-- Packer
map("n", "<leader>ps", "<cmd>PackerSync<CR>", { noremap = true, silent = true })

-- FzfLua
map("n", "<leader>ff", "<cmd>FzfLua files<CR>")

-- Format
map({ "n", "v" }, "<leader>bf", "<cmd>Format<CR>", { noremap = true, silent = true })

-- LSP
map({ "n" }, "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Trouble
map({ "n", "i" }, "<leader>tt", "<cmd>TroubleToggle<CR>")

-- Neoscroll
-- map({ "n" }, "<S-k>", "<cmd>lua require('neoscroll').scroll(-0.10,false,200)<CR>")
-- map({ "n" }, "<S-j>", "<cmd>lua require('neoscroll').scroll(0.10,false,200)<CR>")
-- map({ "n", "i" }, "<ScrollWheelUp>", "<cmd>lua require('neoscroll').scroll(-0.10,false,200)<CR>")
-- map({ "n", "i" }, "<ScrollWheelDown>", "<cmd>lua require('neoscroll').scroll(0.10,false,200)<CR>")

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
