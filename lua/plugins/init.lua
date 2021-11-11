local ok,packer = pcall(require,'plugins.packerInit')
local use = packer.use

if not ok then 
	error()
end

use {
	'https://github.com/wbthomason/packer.nvim',
	event = 'VimEnter'
}
