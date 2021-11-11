local core_ok, core_error = pcall(require,'core')

if not core_ok then
	print('Something went wrong in loading core.\n'..core_error)
end

local plugins_ok, plugin_error = pcall(require,'plugins')

if not plugins_ok then
	print('Something went wrong is loading plugins.\n'..plugin_error)
end
