local ok,packer = pcall(require,'plugins.packerInit')
local use = packer.use

if not ok then 
    local packer_init_error = packer
	error('something went wrong with packer initialization:\n'..packer_init_error)
end
packer.startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufRead',
        config = function() require('plugins.configs.treesitter') end
    }

    use {
        'rmehri01/onenord.nvim',
    }
end)

