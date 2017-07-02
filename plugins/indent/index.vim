"
" Indention configuration.
" 
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"

" define constants
let s:dir = g:plugins . '/indent'

" enable syntax
syntax enable
syntax on

" display the blank characters
set list
set listchars=tab:>-,trail:.

" include & configure by file ext name
let suffix = expand("%:e")
execute 'source ' . s:dir . '/default.vim'
execute 'source ' . s:dir . '/java.vim'
execute 'source ' . s:dir . '/javascript.vim'
execute 'source ' . s:dir . '/css.vim'
execute 'source ' . s:dir . '/html.vim'
execute 'source ' . s:dir . '/python.vim'
execute 'source ' . s:dir . '/shell.vim'
execute 'source ' . s:dir . '/json.vim'
execute 'source ' . s:dir . '/xml.vim'

" expand tabs
set expandtab

