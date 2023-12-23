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
-- vim.cmd.colorscheme('zenburn')  
-- vim.cmd.colorscheme('rose-pine-moon')
-- vim.cmd.colorscheme('deepwhite')
-- vim.cmd.colorscheme('sierra')
-- termguicolors required for nvimgelion
vim.o.termguicolors = true
-- vim.cmd.colorscheme('nvimgelion')
vim.cmd.colorscheme('modus_operandi')
-- vim.cmd.colorscheme('darkrose')  

-- netrw settings
g.netrw_hide = true
-- g.netrw_winsize = 30

-- neovide settings
if g.neovide then
    g.neovide_cursor_animation_length = 0.05
    g.neovide_cursor_trail_size = 0.1
end

vim.opt.completeopt:remove {"preview"}

 -- super-cheap git blame stolen from
 -- https://gist.github.com/romainl/5b827f4aafa7ee29bdc70282ecc31640
vim.cmd [[command! -range GB echo join(systemlist("git -C " . shellescape(expand('%:p:h')) . " blame -L <line1>,<line2> " . expand('%:t')), "\n")]]

-- clipboard for wsl
-- vim.cmd [[let g:clipboard = {
--                 \   'name': 'WslClipboard',
--                 \   'copy': {
--                 \      '+': '/mnt/c/Windows/System32/clip.exe',
--                 \      '*': '/mnt/c/Windows/System32/clip.exe',
--                 \    },
--                 \   'paste': {
--                 \      '+': '/mnt/c/Users/Sukumara/AppData/Local/Microsoft/WindowsApps/pwsh.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                 \      '*': '/mnt/c/Users/Sukumara/AppData/Local/Microsoft/WindowsApps/pwsh.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                 \   },
--                 \   'cache_enabled': 0,
--                 \ } ]]
