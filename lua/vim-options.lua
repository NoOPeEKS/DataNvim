vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true

-- global keymaps
vim.keymap.set({"n", "v"}, "<C-s>", ":w<CR>", {silent = true}) -- save file with Ctrl+S
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", {silent = true}) -- save file with Ctrl+S in insert mode
vim.keymap.set("n", "<leader>x", ":bd<CR>", {silent = true}) -- close current buffer
vim.keymap.set("i", "<C-h>", "<Left>", {silent = true}) -- move left in insert mode
vim.keymap.set("i", "<C-j>", "<Down>", {silent = true}) -- move down in insert mode
vim.keymap.set("i", "<C-k>", "<Up>", {silent = true}) -- move up in insert mode
vim.keymap.set("i", "<C-l>", "<Right>", {silent = true}) -- move right in insert mode

