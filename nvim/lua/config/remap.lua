vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dp")

-- Copy to clipboard
vim.keymap.set("v", "<leader>y", "+y")
vim.keymap.set("n", "<leader>yy", "+yy")

-- Paste from clipboard
vim.keymap.set("v", "<leader>p", "+p")
vim.keymap.set("n", "<leader>p", "+p")
