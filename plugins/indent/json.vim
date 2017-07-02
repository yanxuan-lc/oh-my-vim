"
" Configurations for json files.
" 
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
" 
if suffix == "json"

    " indention
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2

    " folding
    set foldmethod=manual
endif

" enable json plugins
Plugin 'elzr/vim-json'
