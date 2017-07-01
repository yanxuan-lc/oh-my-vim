" Local variables
let $dir = $plugins.'/development'

" Enable syntax
syntax enable
syntax on

" Visible blank characters.
set list
set listchars=tab:>-,trail:.

" Expand file suffix
let suffix = expand("%:e")
source $dir/java.vim
source $dir/javascript.vim
source $dir/css.vim
source $dir/html.vim
source $dir/python.vim
source $dir/shell.vim

" Expand tabs
set expandtab
