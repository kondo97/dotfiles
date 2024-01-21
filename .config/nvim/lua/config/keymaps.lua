-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- Override moving to window using the <ctrl> hjkl keys
map("n", "<C-w>h", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-w>j", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-w>k", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-w>l", "<C-w>l", { desc = "Go to right window", remap = true })

-- Override window resizing using ths <ccmd> hjkl keys
map("n", "<C-Left>", "<C-w><", { desc = "Decrease window width", remap = true })
map("n", "<C-Down>", "<C-w>-", { desc = "Decrease window height", remap = true })
map("n", "<C-Up>", "<C-w>+", { desc = "Increase window height", remap = true })
map("n", "<C-Right>", "<C-w>>", { desc = "Increase window width", remap = true })

-- Switch InsertMode to NormalMode
map({ "i", "x", "n", "s" }, "jj", "<Esc>", { desc = "Switch InsertMode to NormalMode", remap = true })

-- Original Cursor control keys
map({ "i", "x", "n", "s" }, "<C-a>", "^", { desc = "Go to top of line", remap = true })
map({ "i", "x", "n", "s" }, "<C-e>", "$", { desc = "Go to end of line", remap = true })

-- Select all
map("n", "<C-y>", "gg<S-v>G", { desc = "Select all", remap = true })

-- IncRename
map("n", "<leader>rn", ":IncRename ", { desc = "Incremental rename", remap = true })

-- Copy file relative path
map("n", "<leader>cf", ":let @+=expand('%')<CR>", { desc = "Copy file relative path", remap = true })
