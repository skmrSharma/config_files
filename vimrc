set splitbelow splitright
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set autoindent
set number relativenumber	"Enable number of lines on right margin and make it relative
" set cindent		"Enable c style indenting for c related files
set guicursor=sm:hor20
set cursorline
" to remove the distractive matching parenthesis cursors
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE
" zenburn colorscheme
colors zenburn

" tab size 4 settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Change grep to ripgrep if available
if executable('rg')
  set grepprg=rg\ --vimgrep
endif

"Remap jj to Esc 
inoremap jj <ESC>

"window split sizing remappings
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

"window navigation remappings
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"file-manager shortcut
nnoremap - :Ex<CR>

"ale mappings
nnoremap gd :ALEGoToDefinition<CR>
nnoremap gr :ALEFindReferences<CR>

"ctrlp mappings
nnoremap <C-f> :CtrlPLine<CR>
nnoremap <C-b> :CtrlPBuffer<CR>

"vim-plug declarations
call plug#begin()

Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-signify' 
Plug 'ervandew/supertab'

call plug#end()
"call plug#helptags()

let g:ale_completion_enabled=1
let g:ale_cursor_detail = 1
