local M = {}

M.file_info = {
	provider = {
		name = "file_info",
		opts = {
			type = "relative",
		},
	},
	hl = { style = "bold", bg = "bg" },
	left_sep = { str = " ", hl = { bg = "bg" } },
	right_sep = { str = "right_rounded", hl = { fg = "bg" , bg = "none"} },
}

return M
