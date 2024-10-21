vim.cmd("let g:netrw_liststyle = 3") -- Use tree directory style

local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true
opt.numberwidth = 1

-- Tabs & Identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
opt.cursorline = true

 -- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Spell check
opt.spelllang = "en"
opt.spell = true

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Is keyword
opt.iskeyword:append("-")
