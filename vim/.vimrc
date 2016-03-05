" Import bepo keyboard settings "
source .vimrc.bepo

" Divers "
set number
set nocompatible
set cursorline
set noerrorbells
set incsearch
set hlsearch

set shell=/bin/bash "/usr/local/bin/zsh
set undolevels=1000
syntax on
filetype off

" Vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage itself "
Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin on

" Indent options "
set autoindent
set colorcolumn=90
set tabstop=4 shiftwidth=4 expandtab

" Colors "
set t_Co=256
set background=dark
colorscheme genericdc

hi ColorColumn ctermbg=256
