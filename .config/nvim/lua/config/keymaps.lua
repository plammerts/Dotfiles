-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>tc", ":TestNearest -strategy=neovim <CR>", { desc = "Test at cursor (vim-test)" })
vim.keymap.set("n", "<leader>tj", ":TestFile -strategy=neovim <CR>", { desc = "Test file (vim-test)" })
vim.keymap.set("n", "<leader>ta", ":TestSuite -strategy=neovim <CR>", { desc = "Test suite (vim-test)" })
vim.keymap.set("n", "<leader>tl", ":TestLast -strategy=neovim <CR>", { desc = "Test last (vim-test)" })
vim.keymap.set("n", "<leader>tv", ":TestVisit <CR>", { desc = "Visit test file (vim-test)" })
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { silent = true, noremap = true })
