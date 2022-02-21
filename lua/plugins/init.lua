local ok, packer = pcall(require, "plugins.packerInit")
local use = packer.use

if not ok then
	local packer_init_error = packer
	error("something went wrong with packer initialization:\n" .. packer_init_error)
end

packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		config = function()
			require "plugins.configs.treesitter"
		end,
	}
	use {
		"rebelot/kanagawa.nvim",
		config = function()
			require "colors.themes.kanagawa"
		end,
	}
	use {
		"windwp/nvim-autopairs",
		config = function()
			require "plugins.configs.auto-pairs"
		end,
		event = "bufEnter",
	}
	use {
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require "plugins.configs.gitsigns"
		end,
		event = "bufEnter",
	}
	use {
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require "plugins.configs.lualine"
		end,
	}
	use {
		"terrortylor/nvim-comment",
		event = "bufEnter",
		config = function()
			require "plugins.configs.nvim-comment"
		end,
	}
	use {
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function()
			require "plugins.configs.nvim-tree"
		end,
	}
	use {
		"mhartington/formatter.nvim",
		config = function()
			require "plugins.configs.formatter"
		end,
		cmd = { "Format", "FormatWrite" },
	}
	use {
		"neovim/nvim-lspconfig",
		config = function()
			require "lsp.tsserver"
			require "lsp.eslint"
			require "lsp.eslint"
		end,
	}
	use {
		"karb94/neoscroll.nvim",
		config = function()
			require "plugins.configs.neoscroll"
		end,
	}
	use {
		"folke/trouble.nvim",
		config = function()
			require "plugins.configs.trouble"
		end,
		cmd = { "Trouble", "TroubleToggle" },
	}
	use {
		"ibhagwan/fzf-lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require "plugins.configs.fzf_config"
		end,
		event = "bufEnter",
	}
	use {
		"dstein64/vim-startuptime",
		disable = false,
	}
	use {
		"hrsh7th/nvim-cmp",
		disable = false,
		config = function()
			require "plugins.configs.cmp_config"
		end,
	}
	use {
		"hrsh7th/cmp-nvim-lsp",
		disable = false,
	}
	use {
		"simrat39/rust-tools.nvim",
		ft = "rust",
		config = function()
			require "lsp.rust-tools"
		end,
	}
	use {
		"lifepillar/pgsql.vim",
		ft = "sql",
	}
	use {
		"L3MON4D3/LuaSnip",
		config = function()
			require "plugins.configs.lua-snip"
		end,
	}
	use {
		"akinsho/toggleterm.nvim",
		config = function()
			require "plugins.configs.toggleterm"
		end,
		keys = [[<c-\>]],
	}
	use {
		"nvim-treesitter/playground",
		after = "nvim-treesitter",
	}
	use {
		"ellisonleao/glow.nvim",
		cmd = { "Glow", "GlowInstall" },
	}
end)
