-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

vim.keymap.set({ "n", "x", "o" }, "E", "$", { desc = "End of line" })
vim.keymap.set({ "n", "x", "o" }, "$", "E", { desc = "End of WORD" })
vim.keymap.set({ "n", "x", "o" }, "B", "0", { desc = "Start of line" })
vim.keymap.set({ "n", "x", "o" }, "0", "B", { desc = "Start of WORD" })
