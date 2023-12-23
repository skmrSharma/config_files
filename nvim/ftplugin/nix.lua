local o = vim.o

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.formatprg="alejandra -qq"
-- vim.keymap.set('n', '<space>f', '%!alejandra -qq')
vim.keymap.set('n', '<space>f', 'mfgggqGg`f')
