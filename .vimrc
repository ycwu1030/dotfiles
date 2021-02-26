syntax on
set nu
set relativenumber number
set hlsearch
set hidden
set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <esc><esc> :noh<return><esc>
set background=dark
color solarized

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:vimtex_view_method='skim'

call plug#end()
