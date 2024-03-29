set nocompatible

" Plugins installed using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'gruvbox-community/gruvbox'
Plug 'mboughaba/i3config.vim'
" Plug 'vimwiki/vimwiki'
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
" Plug 'dylanaraps/wal.vim'


call plug#end()

" change leader key to <space>, previously it was <alt>
let mapleader = " "

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on

