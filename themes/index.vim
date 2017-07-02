"
" OMV theme configurations.
".
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"

" install more color schemes
Plugin 'flazz/vim-colorschemes'

" Function to enable color scheme.
"
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"
function! ThemeEnable(scheme)
    execute 'colorscheme ' . a:scheme
endfunction

