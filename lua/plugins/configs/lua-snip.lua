local ls = require "luasnip"
local map = vim.keymap.set
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

--- Mappings ---

function on_tab_press()
	if ls.expand_or_jumpable() then
		-- return "<cmd>lua require('luasnip').expand_or_jump()<CR>"
        ls.expand_or_jump()
	else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
	end
end

map({ "i" }, "<Tab>", on_tab_press, { noremap = true, silent = true })

--- Snippets ---

ls.add_snippets("javascript", {
	s({ trig = "af", name = "Arrow Function" }, { t "(", i(1), t ")", t " => ", t "{", i(0), t "}" }),
	s("if", { t "if(", i(1), t "){", i(0), t "}" }),
	s("for", { t "for(let ", i(1, "i"), t "=", i(2, "0"), t "; ", i(3), t "; ", i(4), t "){", i(0), t "}" }),
	s("aaf", { t "async (", i(1), t ")", t " => ", t "{", i(0), t "}" }),
	s("clg", { t "console.log(", i(0), t ");" }),
	s("imp", { t "import ", i(1), t " from '", i(0), t "';" }),
})

ls.add_snippets("html", {
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
})

ls.filetype_extend("vue", { "javascript", "html" })
ls.filetype_extend("javascriptreact", { "javascript", "html" })
ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("svelte", { "javascript", "html" })
