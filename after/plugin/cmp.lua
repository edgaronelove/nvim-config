-- Loading plugins: nvim-cmp, luasnip, nvim-autopairs, lspkind
local cmp = require('cmp')
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()  -- Load snippets from VSCode extensions
require('nvim-autopairs').setup()
local lspkind = require('lspkind')  -- For icons

-- Setup for nvim-cmp
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)  -- Expand snippets using LuaSnip
		end,
	},
	mapping = {
		-- Use Tab to navigate through the completion menu and snippets
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		-- Shift-Tab to navigate backward
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),

		-- Confirm completion with Enter
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true
		}),

		-- Scroll documentation
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp', max_item_count = 7 },  -- LSP source
		{ name = 'luasnip', max_item_count = 7 },   -- Snippet source
	}, {
		{ name = 'buffer', max_item_count = 7 },    -- Buffer source
		{ name = 'path', max_item_count = 7 },      -- Path source
		{ name = 'emoji', max_item_count = 5 },     -- Emoji source (optional)
		{ name = 'tags', max_item_count = 5 },      -- Tags source (optional for HTML attributes)
	}),
	formatting = {
		format = lspkind.cmp_format({
			with_text = false,  -- Do not show text, only icons
			maxwidth = 50,      -- Limit width (adjust as needed)
			menu = {
				buffer = "",
				nvim_lsp = "",
				luasnip = "",
				path = "",
				emoji = "",
				tags = "",
			},
		}),
	},
})

-- nvim-autopairs for automatic bracket pairing
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

-- Setting up LSP with nvim-lspconfig
local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- Setup HTML LSP server (vscode-html-languageserver)
lspconfig.html.setup({
	capabilities = cmp_nvim_lsp.default_capabilities(),  -- Integrate with nvim-cmp
})

-- Setup Python LSP with Pyright
lspconfig.pyright.setup({
	capabilities = cmp_nvim_lsp.default_capabilities(),  -- Integrate with nvim-cmp
})

-- Setup TypeScript LSP with ts_ls (use tsserver or ts_ls)
lspconfig.ts_ls.setup({
	capabilities = cmp_nvim_lsp.default_capabilities(),  -- Integrate with nvim-cmp
})

-- Additional setup for other languages can be added here


