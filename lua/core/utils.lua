local M = {}
local map_key = vim.api.nvim_set_keymap

M.map = function(mode,key,command,opts)
    print('inside map function')
    opts = opts or {}
    if type(mode) == 'string' then mode = {mode} end 
    for _,mode in ipairs(mode) do map_key(mode,key,command,opts)end
end

return M


