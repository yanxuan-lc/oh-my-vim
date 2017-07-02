"
" Commons utilities for developer.
" 
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"
" enable your favorite vundle plugins
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'AutoClose'
Plugin 'vim-scripts/Emmet.vim'

" Airline
Plugin 'vim-airline/vim-airline'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" show matching bracket
set showmatch
set autoindent
set smartindent
