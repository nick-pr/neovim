local M = { "terrortylor/nvim-comment" }

M.opts = {
	-- Linters prefer comment and line to have a space in between markers
	marker_padding = true,
	-- should comment out empty or whitespace only lines
	comment_empty = false,
	-- Should key mappings be created
	create_mappings = true,
	-- Normal mode mapping left hand side
	line_mapping = "gcc",
	-- Visual/Operator mapping left hand side
	operator_mapping = "gc",
	-- Hook function to call before commenting takes place
	hook = nil,
}

M.config = function(lazyPlugin,opts) 
    require("nvim_comment").setup(opts)
end

return M
