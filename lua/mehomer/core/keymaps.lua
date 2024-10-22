vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
-- keymap.set("n", "x", '"_x"')

keymap.set("n", "<leader>-", "<C-x>") -- Decrement number in 'n' mode
keymap.set("n", "<leader>+", "<C-a>") -- Increment number in 'n' mode

-- Window splitting
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vetically" }) -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window <- TODO: Come back to this one

-- Tab management TODO: Come back to this one
keymap.set("n", "<leader>to", ":tabnew<CR>") -- Open new tab
keymap.set("n", "<leader>tx", ":bd<CR>") -- Close current tab
keymap.set("n", "<leader>tn", ":BufferNext<CR>") -- Go to next tab
keymap.set("n", "<leader>tp", ":BufferPrevious<CR>") -- Go to previous tab
keymap.set("n", "<leader>tf", ":tabnew %<CR>") -- Open current buffer in a new tab

-- Plugins keymaps

