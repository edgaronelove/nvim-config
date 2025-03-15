require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "cssls", "pyright" },
})

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.cssls.setup {
	capabilities = capabilities,
}

lspconfig.pyright.setup{
	capabilities = capabilities,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "workspace",
			},
		},
	},
}


