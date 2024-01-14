-- core setup for functionality and mappings
require("core")
-- lazy plugins setup
require("plugins")
-- lsp setup
require("lsp")

-- Set background color of "Normal" text in GUI to none
vim.cmd("highlight Normal guibg=none")
-- Set background color of "NonText" elements in GUI to none
vim.cmd("highlight NonText guibg=none")
-- Set background color of "Normal" text in terminal to none
vim.cmd("highlight Normal ctermbg=none")
-- Set background color of "NonText" elements in terminal to none
vim.cmd("highlight NonText ctermbg=none")

