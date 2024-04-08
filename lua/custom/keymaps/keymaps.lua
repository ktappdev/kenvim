-- keymaps.lua
local map = vim.api.nvim_set_keymap

-- Leader key
-- vim.g.mapleader = " "

-- Normal mode keymaps
-- map("n", "<leader>w", ":w<CR>", { noremap = true }) -- Save file
-- map("n", "<leader>q", ":q<CR>", { noremap = true }) -- Quit

-- Insert mode keymaps
map("i", "jk", "<Esc>", { noremap = true }) -- Escape insert mode

-- Add more keymaps as needed
