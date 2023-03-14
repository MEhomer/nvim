-- Auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- `packer` can manage itself
	use("wbthomason/packer.nvim")

	-- Lua functions that many other plugins use
	use("nvim-lua/plenary.nvim")

	use("christoomey/vim-tmux-navigator")
	use("tpope/vim-surround")
	use("numToStr/Comment.nvim")

	-- File explorer
	use("nvim-tree/nvim-tree.lua")

	-- Icons
	use("nvim-tree/nvim-web-devicons")

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- Fuzzy finding (with telescope)
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- Dependency for telescope
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- LSP (Language Server Protocol)

	-- Managing & installing LSP Servers, Linters & Formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Configuring LSP Servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	use("folke/neodev.nvim")

	-- Formatting & Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Tree-sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Autoclosing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Git Signs
	use("lewis6991/gitsigns.nvim")

	-- Illuminate (hightligh other uses of the word under the cursor)
	use("RRethy/vim-illuminate")

	-- Markdown Preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Theme/Colorscheme
	use("Mofiqul/dracula.nvim")
	-- use("dracula/vim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
