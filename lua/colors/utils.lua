local core_utils = require "core.utils"
local M = {}

M.filetype_highlight = function(filetype, highlights)
	local definitions = {}
	for hi, fields in pairs(highlights) do
		local definition = { "bufEnter", "*." .. filetype, "hi", hi }
		for key, value in pairs(fields) do
			table.insert(definition, "" .. key .. "=" .. value)
		end
		table.insert(definitions, definition)
		print(table.concat(definition, " "))
	end
	local augroup_name = filetype .. "_filetype_highlights"
	local end_autocmd = { "bufLeave", "*." .. filetype, "autocmd! " .. augroup_name }
	core_utils.create_augroup(augroup_name, definitions)
end

return M
