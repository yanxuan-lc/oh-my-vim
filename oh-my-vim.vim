"
" Oh My VIM root configurations.
"
" @author yanxuan.lc
" @version 1.0.0
" @since 1.0.0
"

" define global variables
let g:root = '~/.oh-my-vim'
let g:plugins = g:root . '/plugins'
let g:themes = g:root . '/themes'

" enable vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" include OMV plugin configurations
execute 'source ' . g:plugins . '/index.vim'

" include OMV theme configurations.
execute 'source ' . g:themes . '/index.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable your favorite plugins
call PluginEnable('common')
call PluginEnable('lang-supports')
call PluginEnable('toolkit')
call PluginEnable('indent')
call PluginEnable('git')
call PluginEnable('markdown')

" choose your favorite theme
call ThemeEnable('desert')
" more color scheme: https://github.com/flazz/vim-colorschemes/tree/master/colors
" call ThemeEnable('molokai')
" call ThemeEnable('wuye')
" call ThemeEnable('woju')
