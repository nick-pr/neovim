-- Load Core
local core_ok, core = pcall(require,'core')

if not core_ok then
    local core_error = core
    print('Something went wrong with loading core.\n'..core_error)
end

-- Load Plugins
local plugins_ok, plugins = pcall(require,'plugins')

if not plugins_ok then
    local plugins_err = plugins
    print('Something went wrong with loading plugins:\n'..plugins_err)
end

-- Load Colors
local colors_ok, colors = pcall(require,'colors')

if not colors_ok then
    local colors_err = colors
    print('Something went wrong with loading colors:\n'..colors_err)
end
