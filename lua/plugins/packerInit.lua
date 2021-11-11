local present, packer = pcall(require,'packer')
local cmd = vim.cmd
local fn = vim.fn


if not present then 
	print('Packer wasnt found')
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	
	local clone_command = {
		'git','clone','--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	}

	print('Installing Packer')

	fn.system(clone_command)

    cmd 'packadd packer.nvim'

	present, packer = pcall(require,'packer')

	if present then
		print('Packer successfully installed.')
	else
		error('Something went wrong with installing packer')
	end
end 

cmd 'packadd packer.nvim'

packer.init {}

packer.reset()

return packer






