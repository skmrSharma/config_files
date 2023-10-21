-- leader key is now <space> instead of default \
vim.g.mapleader = " "
local function map(mode, key, action)
    vim.keymap.set(mode, key, action, { silent = true })
end

-- :Ex takes you vi-file-explorer
map('n','-',vim.cmd.Ex)

map('i','jj','<Esc>')

map('n','<leader>rc',[[:e ~/.config/nvim/init.lua<CR>]])

-- clear serach highlights on pressing 'Enter' in normal mode.
-- map('n','<Return>',':noh<CR>')

-- Search terms stay in middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- vim by default has same buffer for copy-paste, this changes it so that highlighted text is saved into void buffer, and the earlier copied text sustains
-- map("x", "<leader>p", [["_dP]])

-- system clipboard paste
map("n", "<leader>p", [["+p]])
map("n", "<leader>P", [["+P]])

-- copy to system clipboard (Y yanks entire line normally, could also do yy)
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- replace the word current cursor is on
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- split navigation
map('n','<C-h>','<C-w>h')
map('n','<C-l>','<C-w>l')
map('n','<C-k>','<C-w>k')
map('n','<C-j>','<C-w>j')
-- Resizing splits
map('n','<C-Left>', '<C-w><')
map('n','<C-Right>', '<C-w>>')
map('n','<C-Up>', '<C-w>+')
map('n','<C-Down>', '<C-w>-')

-- next and previous buffers, taken from vim-unimpaired
-- map('n', ']b', ':bnext<CR>')
-- map('n', '[b', ':bprevious<CR>')
map('n', '<M-]>', ':bnext<CR>')
map('n', '<M-[>', ':bprevious<CR>')

-- escape in terminal mode
map('t', '<Esc>', [[<C-\><C-n>]])

-- escape to remove search highlights
map('n', '<Esc>', ':noh<CR>')
