local telekasten = require("telekasten")
local keymap = vim.keymap.set
local home_dir = vim.fn.expand

telekasten.setup({
	home = home_dir("~/org/zettelkasten"),
	auto_set_filetype = false,
	image_subdir = "img",
	-- markdown file extension
	extension = ".md",
	dailies = home_dir("~/org/zettelkasten/dailies"),
	weeklies = home_dir("~/org/zettelkasten/weeklies"),
	templates = home_dir("~/org/zettelkasten/templates"),
})

-- Launch panel if nothing is typed after <leader>z
keymap("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
keymap("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
keymap("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
keymap("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
keymap("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
keymap("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
keymap("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
keymap("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
keymap("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
keymap("i", "[[", "<cmd>Telekasten insert_link<CR>")
