local M = {}

M.file_info = {
	provider = {
		name = "file_info",
		opts = {
			type = "relative",
		},
	},
	hl = { style = "bold", bg= "none"},
	left_sep = {str = " ", hl = { bg = "none"}},
}

return M
