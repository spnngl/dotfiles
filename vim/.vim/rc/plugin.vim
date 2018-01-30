" Vundle "
set rtp+=$HOME/.vim/bundle/Vundle.vim,$HOME/.fzf
call vundle#begin()

" Vundle manage itself "
Plugin 'gmarik/Vundle.vim'

" Other(s) plugins "
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
map <C-n> :NERDTreeToggle<CR>
"Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2
set noshowmode

"Plugin '5long/pytest-vim-compiler'
"Plugin 'maverickg/stan'
"Bundle 'zah/nim.vim'
"Bundle 'baabelfish/nvim-nim'
Plugin 'junegunn/fzf.vim'

Plugin 'w0rp/ale'
let g:ale_linters_aliases = {'cc': 'cpp'}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

call vundle#end()
filetype plugin indent on
