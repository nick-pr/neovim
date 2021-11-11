local present, packer = pcall(require,'packer')
local cmd = vim.fn

if not present then 
	print('Packer wasnt found')
	local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	
	local clone_command = {
		'git','clone','--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	}

	print('Installing Packer')

	cmd.system(clone_command)

	present, packer = pcall(require,'packer')

	if present then
		print('Packer successfully installed.')
	else
		error('Something went wrong with installing packer')
	end
end 

packer.reset()

packer.init({})

return packer






