local utils = require('core.utils')
local map = utils.map


map('v','<S-j>','<cmd>m .+1<CR>==',{silent=true})

-- Better Indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Better Pasting (Indent)
map({'v','n'},'p',']p')

-- Buffers
map('n','<leader>bs','<cmd>source %<CR>',{noremap = true, silent = true})
map('n','<leader>bo','<cmd>silent !open %<CR>',{noremap = true, silent = true})

-- Sick backspace map
map('n','<bs>','<C-^>zz',{noremap = true, silent = true})

-- Nvim Tree
map({'v','i','n'},'<leader>e','<cmd>NvimTreeToggle<CR>',{silent=true,noremap=true})

-- Packer
map('n','<leader>ps','<cmd>PackerSync<CR>',{noremap = true, silent = true})

-- Telescope
map('n','<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>')
map('n','<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
map('n','<leader>fe', '<cmd>lua require("telescope.builtin").file_browser()<CR>')

-- Format
map({'n','v'},'<leader>bf','<cmd>Format<CR>',{noremap = true, silent = true})
