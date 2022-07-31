local ok, packer = pcall(require, "plugins.packerInit")
local use = packer.use

if not ok then
	local packer_init_error = packer
	local use = packer.use
	error("something went wrong with packer initialization:\n" .. packer_init_error)
end

function useConfig(plugin)
	return string.format('require("plugins.configs.%s")', plugin)
end

-- Packer
use "wbthomason/packer.nvim"

-- Treesitter
use {
	"nvim-treesitter/nvim-treesitter",
	config = useConfig "treesitter",
	event = "BufRead",
}

-- Autopairs
use {
	"windwp/nvim-autopairs",
	config = useConfig "auto-pairs",
	event = "bufEnter",
}

-- Feline
use {
	"feline-nvim/feline.nvim",
	config = useConfig "feline",
}

-- Gitsigns
use {
	"lewis6991/gitsigns.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = useConfig "gitsigns",
	event = "bufEnter",
}

-- Nvim-comment
use {
	"terrortylor/nvim-comment",
	config = useConfig "nvim-comment",
	event = "bufEnter",
}

-- Nvim-tree
use {
	"kyazdani42/nvim-tree.lua",
	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	config = useConfig "nvim-tree",
}

-- Formatter
use {
	"mhartington/formatter.nvim",
	config = useConfig "formatter",
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
}
-- use {
-- 	"ibhagwan/fzf-lua",
-- 	requires = { "kyazdani42/nvim-web-devicons" },
-- 	config = useConfig "fzf-lua",
-- 	event = "bufEnter",
-- }

use {
	"nvim-telescope/telescope.nvim",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = useConfig "telescope",
}
use {
	"nvim-telescope/telescope-fzf-native.nvim",
	run = "make",
}
--Lua Snip
use {
	"L3MON4D3/LuaSnip",
	config = function()
		require "plugins.configs.lua-snip"
	end,
}
--Cmp
use {
	"hrsh7th/nvim-cmp",
	requires = { "hrsh7th/cmp-nvim-lsp" },
	config = useConfig "nvim-cmp",
    after = "LuaSnip"
}
-- Cmp Source for LuaSnip
use {
	"saadparwaiz1/cmp_luasnip",
}
use {
	"nvim-treesitter/playground",
	after = "nvim-treesitter",
}
use {
	"akinsho/toggleterm.nvim",
	config = useConfig "toggleterm",
}
