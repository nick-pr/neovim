local core_ok, core = pcall(require,'core')

if not core_ok then
	local core_error = core
	print('Something went wrong in loading core.\n'..core_error)
end

local plugins_ok, plugins = pcall(require,'plugins')

if not plugins_ok then
	local plugins_error = plugins
	print('Something went wrong is loading plugins.\n'..plugins_error)
end
