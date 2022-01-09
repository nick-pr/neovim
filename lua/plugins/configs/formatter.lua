require("formatter").setup({
	filetype = {
		javascript = {
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
})
