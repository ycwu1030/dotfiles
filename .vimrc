syntax on
set nu
set hidden
set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
color zellner

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:vimtex_view_method='skim'

call plug#end()
