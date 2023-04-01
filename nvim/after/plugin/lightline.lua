--vim.cmd [[let g:lightline = {'colorscheme': 'onedark'}]]
-- local lightline = vim.g.lightline
-- lightline = {}
-- lightline.colorscheme = 'one'
-- lightline.background = 'dark'
-- lightline.active = {right={'filename'}}
-- vim.g.lightline = {colorscheme = 'one',background='dark'}
-- vim.g.lightline = {colorscheme = 'one',background='dark',inactive={right={{'fileencoding'},{'fileformat'},{'percent'}}}}
vim.cmd [[let g:lightline = {
      \ 'colorscheme':'one',
      \ 'background':'dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ ['lineinfo'],['filetype'] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, world!'
      \ },
      \ }]]
