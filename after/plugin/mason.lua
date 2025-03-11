require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "cssls", "pyright"},
})

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.cssls.setup {
	capabilities = capabilities,
}

require'lspconfig'.pyright.setup{
	settings = {
		python = {
			formatting = {
				provider = "black",
				analysis = {
					completeFunctionParens = true,  -- Включает автозаполнение скобок для функций
				},
			},
		},
	},
}


