-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
    "n",
    "<leader>sx",
    require("telescope.builtin").resume,
    { noremap = true, silent = true, desc = "Resume ff" }
)

-- Keymap :noh
vim.keymap.set("n", "<leader>nh", "<cmd>noh<cr>", { desc = ":noh" })

-- Keymap comment
vim.keymap.set("v", "<leader>/", "gcc", { desc = "Comment", remap = true })
