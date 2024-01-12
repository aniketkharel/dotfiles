local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

lspconfig.setup({
	ensure_installed = {
		"clangd",
		"tailwindcss",
		"tsserver",
		"html",
		"bashls",
		"dockerls",
		"docker_compose_language_service",
		"angularls",
		"cssls",
		"emmet_ls",
		"eslint",
		"jsonls",
		"yamlls",
		"jsonls",
		"pyright",
	},
})
