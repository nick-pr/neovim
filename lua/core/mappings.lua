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

-- Format
map('n','<leader>bf','<cmd>FormatWrite<CR>',{noremap = true, silent = true})
