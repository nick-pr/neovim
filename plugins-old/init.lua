local packer = require "plugins.packerInit"
local use = packer.use

function useConfig(plugin)
	return string.format('require("plugins.configs.%s")', plugin)
end

-- Packer, for plugin management.
use "wbthomason/packer.nvim"

-- Treesitter, for better syntax highlighting and more!
-- use {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	config = useConfig "treesitter",
-- 	run = function()
-- 		local ts_update = require("nvim-treesitter.install").update
-- 		ts_update { with_sync = true }
-- 	end,
-- }

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

-- Nvim-web-devicons, for icons.
use {
	"kyazdani42/nvim-web-devicons",
	config = useConfig "nvim-web-devicons",
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

use { "ibhagwan/fzf-lua", config = useConfig "fzf-lua" }

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
-- use {
-- 	"nvim-treesitter/playground",
-- 	after = "nvim-treesitter",
-- }
use {
	"akinsho/toggleterm.nvim",
	config = useConfig "toggleterm",
}

if packer.was_bootstrapped then
	packer.sync()
	-- vim.api.nvim_create_autocmd("User PackerComplete", {
	-- 	callback = function()
	-- 		print "Sync done!"
	-- 	end,
	-- })
end
