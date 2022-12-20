local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
	return
end

treesitter.setup({
	ensure_installed = {
		"python",
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	sync_install = false,
	highlight = {
		enable = true,
		disable = { "" },
		additionl_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "python" } },
	autotag = { enable = true },
	auto_install = true,
})
