local M = {}
local map_key = vim.api.nvim_set_keymap
local api = vim.api

M.map = function(mode,key,command,opts)
    opts = opts or {}
    if type(mode) == 'string' then mode = {mode} end 
    for _,mode in ipairs(mode) do map_key(mode,key,command,opts)end
end

M.create_augroups = function(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end

M.create_augroup = function(name,definitions)
    api.nvim_command('augroup '..name)
    api.nvim_command('autocmd!')
    for _,def in ipairs(definitions) do
        local command = table.concat(vim.tbl_flatten{'autocmd', def},' ')
        api.nvim_command(command)
    end
    api.nvim_command('augroup END')
end 

return M
