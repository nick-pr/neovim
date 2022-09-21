local M = {}
local map_key = vim.api.nvim_set_keymap
local api = vim.api

M.create_augroups = function(definitions)
	for group_name, definition in pairs(definitions) do
		api.nvim_command("augroup " .. group_name)
		api.nvim_command "autocmd!"
		for _, def in ipairs(definition) do
			local command = table.concat(vim.tbl_flatten { "autocmd", def }, " ")
			api.nvim_command(command)
		end
		api.nvim_command "augroup END"
	end
end

M.create_augroup = function(name, definitions)
	api.nvim_command("augroup " .. name)
	api.nvim_command "autocmd!"
	for _, def in ipairs(definitions) do
		local command = table.concat(vim.tbl_flatten { "autocmd", def }, " ")
		api.nvim_command(command)
	end
	api.nvim_command "augroup END"
end

M.icon_from_hex = function(hex)
	return vim.fn.nr2char(tonumber(hex, 16))
end

M.is_lsp_attached = function()
	return next(vim.lsp.buf_get_clients(0)) ~= nil
end

M.highlight = function(group, opt)
	local fg = opt.fg and "guifg=" .. opt.fg .. " " or " "
	local bg = opt.bg and "guibg=" .. opt.bg .. " " or " "
	local gui = opt.gui and "gui=" .. opt.gui .. " " or " "
	vim.cmd("highlight " .. group .. " " .. fg .. bg .. gui)
	-- print("highlight "..group.." "..fg..bg)
end

return M
