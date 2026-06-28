local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Cursor & scroll
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Display
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "100"

-- Completion
opt.completeopt = "menu,menuone,noselect"

-- Backups
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Mouse
opt.mouse = "a"

-- Timeout for key mappings
opt.timeoutlen = 300
opt.updatetime = 250

-- Global statusline
opt.laststatus = 3

-- Clipboard: sync with OS clipboard so "+y/"+p and <C-c>/<C-v> work correctly
opt.clipboard = "unnamedplus"
