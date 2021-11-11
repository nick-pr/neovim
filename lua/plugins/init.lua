local ok,packer = pcall(require,'plugins.packerInit')
local use = packer.use

if not ok then 
    local packer_init_error = packer
	error('something went wrong with packer initialization:\n'..packer_init_error)
end

use {
    'wbthomason/packer.nvim',
    event = 'VimEnter'
}

    
