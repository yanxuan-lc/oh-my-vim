"
" OMV plugin configurations.
"
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"

" Function to enable plugins.
" 
" @param    name    plugin to be enabled.
"
function! PluginEnable(name)
    execute 'source ' . g:plugins . '/' . a:name . '/index.vim'
endfunction
