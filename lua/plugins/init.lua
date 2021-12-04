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

    -- use {
    --     'rmehri01/onenord.nvim',
    --     disable = true,
    -- }
 
    use {
        'navarasu/onedark.nvim',
        config = function() require('colors.themes.onedark') end,
    }

--    use {
--         'ellisonleao/gruvbox.nvim',
--         disable = false,
--         requires = {"rktjmp/lush.nvim"},
--         config = function() require('colors.themes.gruvbox') end,
-- 
--     }

    -- use {
    --     'olimorris/onedarkpro.nvim',
    --     disable = false,
    --     config = function() require('colors.themes.onedarkpro') end,
    -- }
-- 
    -- use {
    --     'folke/tokyonight.nvim',
    --     disable = false,
    --     config = function() require('colors.themes.tokyonight') end,
    -- }

    use {
        'jiangmiao/auto-pairs'
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config= function() require('plugins.configs.gitsigns') end,
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require('plugins.configs.lualine') end,
    }

    use {
        'blackCauldron7/surround.nvim',
        after = 'nvim-treesitter',
        config = function() require('plugins.configs.surround-nvim')end,
    }

    use {
        'terrortylor/nvim-comment',
        config = function() require('plugins.configs.nvim-comment') end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        cmd = {'NvimTreeToggle','NvimTreeFocus'},
        config = function() require('plugins.configs.nvim-tree') end
    }

    use {
        'mhartington/formatter.nvim',
        config = function() require('plugins.configs.formatter') end,
        cmd = {'Format','FormatWrite'}
    }

    use {
        'turbio/bracey.vim',
        cmd = 'Bracey'
    }
    use {
        'neovim/nvim-lspconfig'
    }
    use {
        'karb94/neoscroll.nvim',
        config = function() require('plugins.configs.neoscroll')end,
        keys= {'<S-j>','<S-k>'}
    }
    use {
        'folke/trouble.nvim',
        config = function() require('plugins.configs.trouble') end, 
    }

end)

