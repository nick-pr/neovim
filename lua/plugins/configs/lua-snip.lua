local function prequire(...)
	local status, lib = pcall(require, ...)
	if status then
		return lib
	end
	return nil
end

local luasnip = prequire "luasnip"
local cmp = prequire "cmp"

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
	local col = vim.fn.col "." - 1
	if col == 0 or vim.fn.getline("."):sub(col, col):match "%s" then
		return true
	else
		return false
	end
end

_G.tab_complete = function()
	if cmp and cmp.visible() then
		cmp.select_next_item()
	elseif luasnip and luasnip.expand_or_jumpable() then
		return t "<Plug>luasnip-expand-or-jump"
	elseif check_back_space() then
		return t "<Tab>"
	else
		cmp.complete()
	end
	return ""
end
_G.s_tab_complete = function()
	if cmp and cmp.visible() then
		cmp.select_prev_item()
	elseif luasnip and luasnip.jumpable(-1) then
		return t "<Plug>luasnip-jump-prev"
	else
		return t "<S-Tab>"
	end
	return ""
end

-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})

local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"

ls.snippets = {
	lua = {
		s("trigger", t "Wow! Text!"),
	},
}

ls.snippets.javascript = {
	s("af", { t "(", i(1), t ")", t " => ", t "{", i(0), t "}" }),
	s("clg", { t "console.log(", i(0), t ");" }),
	s("imp", { t "import ", i(1), t " from '", i(0), t "';" }),
}

ls.snippets.html = {
	s("html", { t "<html>", i(0), t "</html>" }),
	s("head", { t "<head>", i(0), t "</head>" }),
	s("body", { t "<body>", i(0), t "</body>" }),
	s("button", { t "<button>", i(0), t "</button>" }),
	s("template", { t "<template>", i(0), t "</template>" }),
	s("script", { t "<script>", i(0), t "</script>" }),
	s("style", { t "<style>", i(0), t "</style>" }),
	s("p", { t "<p>", i(0), t "</p>" }),
	s("h1", { t "<h1>", i(0), t "</h1>" }),
	s("h2", { t "<h2>", i(0), t "</h2>" }),
	s("h3", { t "<h3>", i(0), t "</h3>" }),
}

ls.filetype_extend("vue", { "javascript", "html" })
