set nocompatible		" required
filetype off			" required

syntax on 			" highlight syntax
set number 			" show line numbers
set noswapfile 			" disable the swapfile
set hlsearch 			" highlight all results
set ignorecase 			" ignore case in search
set incsearch 			" show search results as you type
inoremap jk <ESC>
vnoremap jk <ESC>
let mapleader = "<space>"

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
nnoremap <space> za

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/plugin/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" add all your plugins here

" all plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
