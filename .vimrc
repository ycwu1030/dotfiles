"======================================
"           Basic Settings
"======================================

" Syntax
syntax on

" Show current mode in the bottom
set showmode

" Show the command
set showcmd

" Whether keep buffer, hidden means the buffer is kept
set hidden

" Don't worry about being compatible with vi
set nocompatible

" Using utf-8
set encoding=utf8

" Using 256 color
set t_Co=256

" Checking the filetype, such that it can load corresponding indent rule
" filetype indent on

" No bell
set noerrorbells
" But visual bell
set visualbell

" The length of History to be remember
set history=1000

" Auto reload
set autoread

" In normal mode, Tab can complete the command
set wildmenu
set wildmode=longest:list,full

" Keep undo file
set undofile

" The directory to keep the backup, swap, undo files
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

" Auto switch to the directory of current file
set autochdir

"======================================
"           Indent
"======================================

" After enter, the next line will keep the same indent
set autoindent
" The space number that is used for one tab
set tabstop=4
" The space number that the command >> << == will use
set shiftwidth=4
" Change tab to space
set expandtab
set softtabstop=4
set smarttab
set smartindent


"======================================
"           Appearance
"======================================

set number
set relativenumber number
"set cursorline

" How much line it will keep between cursor and bottom
set scrolloff=5

" Show the status bar: 0 do not show, 1: show on multi-window, 2: always show
set laststatus=2
"set statusline=%F%m%r%h%w\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

" Show the current cursor position
"set ruler



"======================================
"           Searches
"======================================
" Show the match of the other parenthesis
set showmatch

" Highlight the search
set hlsearch

" Jump to the match result during typing
set incsearch

" Case insensitive
set ignorecase 
" Be smart about the case during search
set smartcase



"======================================
"           Key Map
"======================================
" Do not use arrow key in vim
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" no highlight
nnoremap <esc><esc> :noh<return><esc>
"set background=dark
"colorscheme solarized


"======================================
"           Plugins
"======================================
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:vimtex_view_method='skim'
Plug 'vim-airline/vim-airline'  
Plug 'vim-airline/vim-airline-themes'

call plug#end()
