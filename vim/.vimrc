" Import bepo keyboard settings "
source ~/.vimrc.bepo

" Divers "
set number
set nocompatible
set cursorline
set noerrorbells
set incsearch
set hlsearch

set shell=/usr/local/bin/zsh
set undolevels=1000
syntax on
filetype plugin on

" Indent options "
set autoindent
set colorcolumn=90
set tabstop=4 shiftwidth=4 expandtab

" Colors "
set t_Co=256
set background=dark
colorscheme void

hi ColorColumn ctermbg=256
