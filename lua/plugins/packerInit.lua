local present, packer = pcall(require, "packer")
local cmd = vim.cmd
local fn = vim.fn

-- Bootstrapping Packer
if not present then
	print "Packer wasnt found"
	local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

	local clone_command = {
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}

	print "Installing Packer"

	fn.system(clone_command)

	present, packer = pcall(require, "packer")

	if present then
		print "Packer successfully installed."
	else
		error "Something went wrong with installing packer"
	end
end

-- Packer initialization
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "single" }
		end,
	},
}

-- Autocommand when editing config files.
local group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
    group = group,
	pattern = {
		"*/nvim/lua/plugins/init.lua",
		"*/nvim/lua/plugins/packerInit.lua",
		"*/nvim/lua/thenme/external.lua",
	},
	callback = function()
		if not vim.g.config_dir then
			local myvimrc = os.getenv "MYVIMRC"
			vim.g.config_dir = string.match(myvimrc, ".*/")
		end

		vim.api.nvim_command("so " .. vim.g.config_dir .. "lua/plugins/packerInit.lua")
		vim.api.nvim_command("so " .. vim.g.config_dir .. "lua/plugins/init.lua")
		vim.api.nvim_command("so " .. vim.g.config_dir .. "lua/theme/external.lua")
	end,
})

return packer
