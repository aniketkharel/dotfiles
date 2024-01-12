local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node

-- will exclude all javascript snippets
require("luasnip/loaders/from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
ls.filetype_extend("all", { "_" })

-- js clg
local clg = function()
	return { "console.log()" }
end

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "clg",
			name = "debug console",
			dscr = "javascript debug log",
		}, { func(clg, {}) }),
		snip("easync", {
			text("export const "),
			insert(1, "Name"),
			text("= async ("),
			insert(2),
			text(") : Promise<any> => "),
			insert(3),
			text({ " {", "" }),
			text("\t"),
			insert(0),
			text({ "", "}" }),
		}),
	},
})

ls.add_snippets(nil, {
	all = {
		snip("h1", {
			text("# "),
			insert(1, "Name"),
		}),
	},
})

-- set type to "autosnippets" for adding autotriggered snippets.
ls.add_snippets("all", {
	snip("autotrigger", {
		text("autosnippet"),
	}),
}, {
	type = "autosnippets",
	key = "all_auto",
})
