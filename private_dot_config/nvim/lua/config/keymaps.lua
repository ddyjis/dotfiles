-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local unmap = vim.keymap.del
local map = vim.keymap.set

-- Replace the move Lines keymaps
unmap({ "n", "i", "v" }, "<A-j>")
unmap({ "n", "i", "v" }, "<A-k>")
map("n", "<C-S-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<C-S-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<C-S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<C-S-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<C-S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<C-S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Add cwd terminal toggle
map("n", "<C-`>", function()
  Snacks.terminal.toggle(nil, {
    env = {
      TERM = "xterm-256color",
    },
    win = {
      position = "float",
      width = 0.75,
      height = 0.75,
    },
  })
end, { desc = "Terminal (cwd)" })
map("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Use jk to escape
map("i", "jk", "<esc>")
