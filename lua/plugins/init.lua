local ok, packer = pcall(require, "plugins.packerInit")
local use = packer.use
if not ok then
	local packer_init_error = packer
	error("something went wrong with packer initialization:\n" .. packer_init_error)
end

function useConfig(plugin)
	return string.format('require("plugins.configs.%s")', plugin)
end

packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
		config = useConfig "treesitter",
		event = "BufRead",
	}
	use {
		"rebelot/kanagawa.nvim",
		config = useConfig "kanagawa",
	}
	use {
		"windwp/nvim-autopairs",
		config = useConfig "auto-pairs",
		event = "bufEnter",
	}
	use {
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = useConfig "gitsigns",
		event = "bufEnter",
	}
	use {
		"terrortylor/nvim-comment",
		config = useConfig "nvim-comment",
		event = "bufEnter",
	}
	use {
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = useConfig "nvim-tree",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	}
	use {
		"mhartington/formatter.nvim",
		config = useConfig "formatter",
		cmd = { "Format", "FormatWrite" },
	}
	use {
		"neovim/nvim-lspconfig",
		config = useConfig "nvim-lspconfig",
	}
	use {
		"karb94/neoscroll.nvim",
		config = useConfig "neoscroll",
	}
	use {
		"folke/trouble.nvim",
		config = useConfig "trouble",
		cmd = { "Trouble", "TroubleToggle" },
	}
	use {
		"ibhagwan/fzf-lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = useConfig "fzf-lua",
		event = "bufEnter",
	}
	use {
		"hrsh7th/nvim-cmp",
		requires = { "hrsh7th/cmp-nvim-lsp" },
		config = useConfig "nvim-cmp",
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
		"nvim-treesitter/playground",
		after = "nvim-treesitter",
	}
	use {
		"ellisonleao/glow.nvim",
		cmd = { "Glow", "GlowInstall" },
	}
	use {
		"lervag/vimtex",
		config = function()
			require "plugins.configs.vimtex"
		end,
		ft = "tex",
	}
end)
