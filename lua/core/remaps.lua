vim.g.mapleader = " "
-- file structure
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- windows split navigation
vim.keymap.set("n", "<C-k>", "<C-w>W") 
vim.keymap.set("n", "<C-j>", "<C-w>w")
--
-- windows tab navigation
vim.keymap.set("n", "<C-h>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-l>", vim.cmd.tabnext)

-- for moving lines up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--append line to the end
vim.keymap.set("n", "J", "mzJ`z")

--replace paste 
vim.keymap.set("x", "<leader>p", "\"_dP")

--select all
vim.keymap.set("n", "<C-a>", "<esc>ggVG<CR>")

--cp setup 
vim.keymap.set("n", "<leader>nn", ":!rm -rf test* && cp /home/mage/Documents/CP/codeforces/template/template.cpp practise.cpp <CR>")
vim.keymap.set("n", "CC", ":w <bar> !g++ -Wall -Werror -D DEBUG %<.cpp -o run<CR>")
