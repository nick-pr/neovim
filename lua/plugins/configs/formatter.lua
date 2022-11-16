local map = vim.keymap.set
local util = require "formatter.util"

local javascript_formatter = function()
	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
			"--single-quote",
			"--arrow-parens",
			"avoid",
			"--tab-width",
			4,
			"--config-precedence",
			"prefer-file",
		},
		stdin = true,
	}
end

-- Setup
require("formatter").setup {
	filetype = {
		typescript = { javascript_formatter },
		typescriptreact = { javascript_formatter },
		javascript = { javascript_formatter },
		javascriptreact = { javascript_formatter },
		vue = {
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
						"--single-quote",
						"--tab-width",
						4,
					},
					stdin = true,
				}
			end,
		},
		rust = {
			function()
				return {
					exe = "rustfmt",
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
		go = {
			function()
				return {
					exe = "gofmt",
					stdin = true,
				}
			end,
		},
	},
}

-- Mappings
map({ "n", "v" }, "<leader>bf", "<cmd>Format<CR>", { noremap = true, silent = true })
