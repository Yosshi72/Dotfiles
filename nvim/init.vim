set number
set ruler
set title
set showmatch
set autoindent 
set mouse=a
set nobackup
set noswapfile
set tabstop=2
set shiftwidth=2
set belloff=all
set wildmenu
set clipboard_=unnamed
set hls
set cursorline
if &compatible
 set nocompatible
endif
filetype plugin indent on
syntax enable

nnoremap <C-h> <Left>
inoremap <C-h> <Left>
nnoremap <C-j> <Down>
inoremap <C-j> <Down>
nnoremap <C-l> <Right>
inoremap <C-l> <Right>
nnoremap <C-k> <Up>
inoremap <C-k> <Up>
inoremap  <silent> jj <ESC>

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
