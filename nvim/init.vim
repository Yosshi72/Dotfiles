set number
set title
set autoindent 
set nobackup
set noswapfile
set tabstop=2
set shiftwidth=2
set clipboard=unnamed
set hls
if &compatible
 set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/dein/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
if dein#check_install()
	call dein#install()
endif
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
