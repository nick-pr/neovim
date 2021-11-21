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

--     use {
--         'rmehri01/onenord.nvim',
--         disable = true,
--     }
-- 
    use {
        'navarasu/onedark.nvim',
        config = function() require('plugins.configs.onedark') end,
    }

--     use {
--         'ellisonleao/gruvbox.nvim',
--         disable = true,
--         requires = {"rktjmp/lush.nvim"},
--     }
-- 
--     use {
--         'olimorris/onedarkpro.nvim',
--         disable = true,
--         config = function() require('plugins.configs.onedarkpro') end,
--     }
-- 
--     use {
--         'folke/tokyonight.nvim',
--         disable = false,
--         config = function() require('plugins.configs.tokyonight') end,
--     }

    use {
        'jiangmiao/auto-pairs'
    }

    use {
        'terrortylor/nvim-comment',
        config = function() require('plugins.configs.nvim-comment') end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        cmd = {'NvimTreeToggle','NvimTreeFocus'},
        config = function() require('plugins.configs.nvim-tree') end
    }

    use {
        'mhartington/formatter.nvim',
        config = function() require('plugins.configs.formatter') end,
        cmd = {'Format','FormatWrite'}
    }
end)

