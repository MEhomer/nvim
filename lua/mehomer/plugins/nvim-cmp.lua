local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then return end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then return end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then return end

-- Load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
		["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
		["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll up docs
		["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll down docs
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP
        { name = "luasnip" }, -- Snippets
        { name = "buffer" }, -- Text within current buffer
        { name = "path" }, -- File system paths
    }),
    formatting = {
        format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
    },
})
