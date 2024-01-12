local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	-- A list of parser names, or "all"
	-- ensure_installed = "all",
	ensure_installed = {
		"c",
		"lua",
		"cpp",
		"javascript",
		"typescript",
		"rust",
		"html",
		"css",
		"yaml",
		"json",
		"markdown",
		"markdown_inline",
	},

	sync_install = false,

	auto_install = false,

	highlight = {
		enable = true,
	},

	autopairs = {
		enable = true,
	},

	indent = { enable = true, disable = { "python", "css" } },
})
