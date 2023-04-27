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

o.splitbelow = true
o.splitright = true
o.showmode = false
--vim.cmd.colorscheme('archaic_dark')
--vim.cmd.colorscheme('base16-onedark')
-- vim.cmd.colorscheme('moonbow')  -- gruvbox like theme
-- vim.cmd.colorscheme("kanagawa")
vim.cmd.colorscheme('zenburn')  
-- vim.cmd.colorscheme('darkrose')  

o.guifont = 'JetBrains Mono:h16'

-- netrw settings
g.netrw_hide = true
-- g.netrw_winsize = 30

-- neovide settings
if g.neovide then
    g.neovide_cursor_animation_length = 0.05
    g.neovide_cursor_trail_size = 0.1
end

-- clipboard for wsl
vim.cmd [[let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': '/mnt/c/Windows/System32/clip.exe',
                \      '*': '/mnt/c/Windows/System32/clip.exe',
                \    },
                \   'paste': {
                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ } ]]
