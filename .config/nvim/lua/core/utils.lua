local options = {
	background = "dark",
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = { "menuone", "noselect" },
	conceallevel = 2,
	fileencoding = "utf-8",
	spelllang = "en_us",
	--hlsearch = true,
	incsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 1,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = false,
	cursorcolumn = false,
	colorcolumn = "80",
	number = true,
	relativenumber = true,
	numberwidth = 2,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 10,
	laststatus = 3,
	sidescrolloff = 10,
	breakindent = true,
	showbreak = string.rep(" ", 3),
	linebreak = true,
	foldmethod = "marker",
	foldlevel = 0,
	modelines = 1,
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

vim.cmd("set nohidden")

-- netrw configs
vim.g.netrw_banner = 0
vim.opt.spell = false

vim.opt.foldmethod = "manual"
vim.opt.foldenable = false

-- ripgrep setup
vim.cmd([[set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case]])
vim.cmd([[set grepformat=%f:%l:%c:%m]])
vim.cmd([[set spell]])
