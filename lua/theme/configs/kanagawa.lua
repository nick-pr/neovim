return function()
	local default_colors = require("kanagawa.colors").setup()

	local my_colors = {
		fujiWhite = "#C0CAF5",
	}

	local overrides = {
        TSBoolean = { bold = false },
        VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
	}

	vim.opt.laststatus = 3
	vim.opt.fillchars:append {
		horiz = "━",
		horizup = "┻",
		horizdown = "┳",
		vert = "┃",
		vertleft = "┨",
		vertright = "┣",
		verthoriz = "╋",
	}

	require("kanagawa").setup {
		overrides = overrides,
		colors = my_colors,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = {},
		statementStyle = {},
		typeStyle = {},
		dimInactive = false,
		globalStatus = true,
	}
	vim.cmd "colorscheme kanagawa"
end
