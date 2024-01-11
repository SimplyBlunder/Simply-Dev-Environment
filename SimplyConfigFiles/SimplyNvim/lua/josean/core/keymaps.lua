-- set leader key to default space
-- vim.g.mapleader = ""

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
--keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
--keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Increasing and decreasing the size of splits
-- Increase the height of the current split
vim.api.nvim_set_keymap("n", "<leader>+", ":vertical resize +10<CR>", { noremap = true, silent = true })

-- Decrease the height of the current split
vim.api.nvim_set_keymap("n", "<leader>=", ":vertical resize -10<CR>", { noremap = true, silent = true })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-----------------------
--Working on fixing moving between splits in nvim with tmux --
--
--
-- Switch between vertical splits using Ctrl+h and Ctrl+l
-- keybinds fix the issue previously where splits in nvim wouldn't work when in tmux because they have the same bind - they now behave as should.
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

--keymaps for Debugging with DAP
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

return M
