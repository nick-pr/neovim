local core_utils = require "core.utils"

core_utils.create_augroups {
	term = {
		{ "termOpen", "*", "startinsert" },
	},
	expand_path_write = {
		{ "BufWritePre", "*", 'call mkdir(expand("<afile>:p:h"),"p")' },
	},
	nvim_tree = {
		{ "bufEnter", "NvimTree", 'execute "normal" 0 ' },
	},
}

-- vim.cmd('autocmd TermOpen * startinsert')
-- vim.cmd('autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")')
