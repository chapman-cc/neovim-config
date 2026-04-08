local km = vim.keymap

-- **** General Utility & Movement ****  
-- Move selected lines up and down in visual mode
km.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
km.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

km.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
km.set("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })

-- Window Navigation
km.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window",  silent = true })
km.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", silent = true })
km.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", silent = true })
km.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", silent = true })

-- Window Management
km.set("n", "<leader>ww", "<C-w>p", { desc = "Other Window",  silent = true })
km.set("n", "<leader>wd", "<C-w>c", { desc = "Delete Window",  silent = true })
km.set("n", "<leader>-", "<C-w>s", { desc = "Split Window Below",  silent = true })
km.set("n", "<leader>|", "<C-w>v", { desc = "Split Window Right",  silent = true })
