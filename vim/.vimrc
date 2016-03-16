" Import bepo keyboard settings "
source ~/.vimrc.bepo

" Divers "
set number
set nocompatible
set cursorline
set noerrorbells
set incsearch
set hlsearch
set encoding=utf-8

set shell=/bin/bash "/usr/local/bin/zsh
set undolevels=1000
filetype off

" Vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage itself "
Plugin 'gmarik/Vundle.vim'

" Other(s) plugins "
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"
map <C-n> :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin on

" Indent options "
set autoindent
set colorcolumn=90
set tabstop=4 shiftwidth=4 expandtab

" For python "
let python_highlight_all=1
au BufNewFile, BufRead *.py
    \ set softtabstop=4
    \ set textwidth=79
    \ set fileformat=unix

" Bad whitespaces "
au BufRead, BufNewFile *.py, *.pyw, *.c, *.cpp, *.h match BadWhitespace /\s\+$/

" Colors "
set t_Co=256
set background=dark
colorscheme genericdc

hi ColorColumn ctermbg=256
syntax on
