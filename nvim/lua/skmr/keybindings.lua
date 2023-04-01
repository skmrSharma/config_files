-- leader key is now <space> instead of default \
vim.g.mapleader = " "
local function map(mode, key, action)
    vim.keymap.set(mode, key, action, { silent = true })
end

-- :Ex takes you vi-file-explorer
map('n','-',vim.cmd.Ex)

map('i','jj','<Esc>')

-- Search terms stay in middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- vim by default has same buffer for copy-paste, this changes it so that highlighted text is saved into void buffer, and the earlier copied text sustains
map("x", "<leader>p", [["_dP]])

-- copy to system clipboard (Y yanks entire line normally, could also do yy)
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- replace the word current cursor is on
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

if vim.g.neovide then
    map("n", "<leader>v", [["+p]])
end
-- scale fonts in Neovide
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
map("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
map("n", "<C-->", function()
  change_scale_factor(1/1.25)
end)
