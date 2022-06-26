local map = vim.keymap.set

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
						-- "--config-path " .. os.getenv("XDG_CONFIG_HOME") .. "/stylua/stylua.toml",
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
}

-- Mappings
map({ "n", "v" }, "<leader>bf", "<cmd>Format<CR>", { noremap = true, silent = true })
