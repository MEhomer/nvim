local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- Recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]) -- Change NvimTree arrows color

nvimtree.setup({
	-- Sizing
	view = {
		adaptive_size = true,
	},
	-- Change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "→", -- Arrow when folder is closed
					arrow_open = "↓", -- Arrow when folder is open
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
