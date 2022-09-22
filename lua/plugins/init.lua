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

-- Packer, for plugin management.
use "wbthomason/packer.nvim"

-- Treesitter, for better syntax highlighting and more!
use {
	"nvim-treesitter/nvim-treesitter",
	config = useConfig "treesitter",
	run = ":TSUpdate",
	event = "BufRead",
}

-- Autopairs, for auto closing/opening of pairs as god intended.
use {
	"windwp/nvim-autopairs",
	config = useConfig "auto-pairs",
	event = "bufEnter",
}

use {
	"gbprod/substitute.nvim",
	config = useConfig "substitute",
}

-- Feline, for status bar and win bar.
use {
	"feline-nvim/feline.nvim",
	config = useConfig "feline",
}

-- Gitsigns, for helpful git intergrations.
use {
	"lewis6991/gitsigns.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = useConfig "gitsigns",
	event = "bufEnter",
}

-- Nvim-comment, for better commenting.
use {
	"terrortylor/nvim-comment",
	config = useConfig "nvim-comment",
	event = "bufEnter",
}

-- Nvim-tree, for a file tree within neovim.
use {
	"kyazdani42/nvim-tree.lua",
	requires = { "kyazdani42/nvim-web-devicons" },
	config = useConfig "nvim-tree",
}

-- Formatter, for a nice formatter.
use {
	"mhartington/formatter.nvim",
	config = useConfig "formatter",
}

-- Nvim-lspconfig, for easy lsp configurations.
use {
	"neovim/nvim-lspconfig",
	config = useConfig "nvim-lspconfig",
}

-- Neocroll, for smooth scrolling.
use {
	"karb94/neoscroll.nvim",
	config = useConfig "neoscroll",
}

-- Trouble, for a pretty way to view lsp diagnostics.
use {
	"folke/trouble.nvim",
	config = useConfig "trouble",
}

-- Nvim-colorizer, for color previews inside neovim.
use {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup {}
	end,
}

use { "ibhagwan/fzf-lua", config = useConfig "fzf" }
--Lua Snip, for snippets.
use {
	"L3MON4D3/LuaSnip",
	config = function()
		require "plugins.configs.lua-snip"
	end,
}
--Cmp, for completion 'n stuff.
use {
	"hrsh7th/nvim-cmp",
	requires = { "hrsh7th/cmp-nvim-lsp" },
	config = useConfig "nvim-cmp",
	after = "LuaSnip",
}
-- Cmp Source for LuaSnip
use {
	"saadparwaiz1/cmp_luasnip",
}
-- Lsp signature, for lsp signatures..
-- use {
-- 	"ray-x/lsp_signature.nvim",
-- 	config = function()
-- 		require("lsp_signature").setup {
-- 			hint_enable = false,
-- 			floating_window_off_x = 0,
-- 			floating_window_off_y = -5,
--             floating_window_above_cur_line = false,
--             doc_lines = 0,
--             max_height = 3,
--             max_width = 20,
-- 			-- floating_window = false,
-- 		}
-- 	end,
-- }
use {
	"nvim-treesitter/playground",
	after = "nvim-treesitter",
}
use {
	"akinsho/toggleterm.nvim",
	config = useConfig "toggleterm",
}
