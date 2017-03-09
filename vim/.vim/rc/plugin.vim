" Vundle "
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage itself "
Plugin 'gmarik/Vundle.vim'

" Other(s) plugins "
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
map <C-n> :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2
set noshowmode

Plugin '5long/pytest-vim-compiler'

call vundle#end()
filetype plugin indent on