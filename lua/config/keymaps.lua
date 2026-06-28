-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Windows-style shortcuts
-- Save
map({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "Save" })

-- Undo / Redo
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })
map("i", "<C-z>", "<cmd>undo<cr>", { desc = "Undo" })
map("i", "<C-y>", "<cmd>redo<cr>", { desc = "Redo" })

-- Find (Telescope)
map("n", "<C-f>", function()
  local builtin = require("telescope.builtin")
  builtin.find_files()
end, { desc = "Find Files" })

-- Find in files (grep) — use <leader>/ to avoid conflict with <C-h> window nav
map("n", "<leader>/", function()
  local builtin = require("telescope.builtin")
  builtin.live_grep()
end, { desc = "Find in Files (Grep)" })

-- New file
map("n", "<C-n>", "<cmd>ene<cr>", { desc = "New File" })

-- Open file (Telescope)
map("n", "<C-o>", function()
  local builtin = require("telescope.builtin")
  builtin.oldfiles()
end, { desc = "Recent Files" })

-- Select all
map("n", "<C-a>", "ggVG", { desc = "Select All" })
map("i", "<C-a>", "<Esc>ggVG", { desc = "Select All" })

-- Copy/Cut/Paste clipboard integration
map("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("v", "<C-x>", '"+d', { desc = "Cut to clipboard" })
-- Use <C-r>+ in insert mode to paste without leaving insert mode
map("i", "<C-v>", '<C-r>+', { desc = "Paste from clipboard", noremap = true, silent = true })
map("n", "<C-v>", '"+p', { desc = "Paste from clipboard" })

-- Tab / Buffer navigation
map("n", "<C-Tab>", "<cmd>bn<cr>", { desc = "Next Buffer" })
map("n", "<C-S-Tab>", "<cmd>bp<cr>", { desc = "Prev Buffer" })
-- Use <leader>bd to close buffer (avoids conflict with <C-w> window prefix)
map("n", "<leader>bq", "<cmd>bd<cr>", { desc = "Close Buffer" })

-- Zoom / Equalize splits
map("n", "<C-=>", "<C-w>=", { desc = "Equalize Splits" })

-- Terminal
map("n", "<leader>tt", "<cmd>term<cr>", { desc = "Open Terminal" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Resize windows
map("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Resize Up" })
map("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Resize Down" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Resize Left" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Resize Right" })
