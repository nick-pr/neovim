local utils = require('core.utils')
local map = utils.map


map('v','<S-j>','<cmd>m .+1<CR>==',{silent=true})
