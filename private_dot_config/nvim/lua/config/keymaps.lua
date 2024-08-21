-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map({ "i" }, "jj", "<Esc>", { desc = "Exit insert mode", noremap = true, silent = true })
map({ "i" }, "jk", "<Esc>", { desc = "Exit insert mode", noremap = true, silent = true })

map({ "n", "v" }, ";", ":", { desc = "Enter command mode", noremap = true, silent = true })
