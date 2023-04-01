require('skmr')
local g = vim.g
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

o.guifont = 'JetBrains Mono:h16'

-- netrw settings
g.netrw_hide = true
-- g.netrw_winsize = 30

-- neovide settings
if g.neovide then
    g.neovide_cursor_animation_length = 0.05
    g.neovide_cursor_trail_size = 0.1
end

