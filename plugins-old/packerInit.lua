local cmd = vim.cmd
local fn = vim.fn

-- Bootstrapping Packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_installed = fn.empty(fn.glob(install_path)) <= 0
local bootstrapped = false

if not packer_installed then
    print("[packer] Packer wasnt found, installing now.")

    local clone_command = {
        "git",
        "clone",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }

    fn.system(clone_command)
    vim.cmd([[packadd packer.nvim]])

    bootstrapped = true
end

-- Packer initialization
local packer = require("packer")

if bootstrapped then
    packer.was_bootstrapped = true
end

packer.init({
    display = {
        --         non_interactive = true,
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

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
            local myvimrc = os.getenv("MYVIMRC")
            vim.g.config_dir = string.match(myvimrc, ".*/")
        end

        vim.api.nvim_command("so " .. vim.g.config_dir .. "lua/plugins/packerInit.lua")
        vim.api.nvim_command("so " .. vim.g.config_dir .. "lua/plugins/init.lua")
    end,
})

return packer
