local components = {
	active = { {}, {}, {} },
	inactive = { {}, {}, {} },
}

components.active[1][1] = {
	provider = {
		name = "file_info",
		opts = {
			type = "base-only",
		},
	},
	left_sep = "block",
	hl = { fg = "grey" },
}
components.active[1][2] = {
	provider = function()
		return " on "
	end,
}
components.active[1][3] = {
	provider = "git_branch",
	hl = { fg = "#957FB8" },
}
components.active[1][4] = {
	provider = "git_diff_added",
	hl = { fg = "#76946A" },
}
components.active[1][5] = {
	provider = "git_diff_removed",
	hl = { fg = "#C34043" },
}
components.active[1][6] = {
	provider = "git_diff_changed",
	hl = { fg = "#DCA561" },
}

require("feline").setup {
	components = components,
}
