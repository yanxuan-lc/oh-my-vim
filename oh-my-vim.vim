" Define global variables
let $root = '~/.oh-my-vim'
let $plugins = $root.'/plugins'
let $themes = '$root/themes'

" Configuration Vundle.Vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install plugins
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/Emmet.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'AutoClose'
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Language supports
source $plugins/lang-supports/index.vim

" Development supports
source $plugins/development/index.vim

" Theme
source $themes/desert/index.vim
