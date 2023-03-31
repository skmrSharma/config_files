require('skmr')
local o = vim.o

-- numbers and relative numbers
o.number = true
o.relativenumber = true

-- tab indent is 4 spaces only
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.showmode = false
--vim.cmd.colorscheme('archaic_dark')
--vim.cmd.colorscheme('base16-onedark')
--vim.cmd.colorscheme('moonbow')  -- gruvbox like theme
vim.cmd.colorscheme("kanagawa")
