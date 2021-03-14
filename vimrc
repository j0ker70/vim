set nocompatible

" Auto source vimrc when made changes in vimrc
autocmd! bufwritepost vimrc ++nested source %

" Plugins installed using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'gruvbox-community/gruvbox'

call plug#end()

" change leader key to <space>, previously it was <alt>
let mapleader = " "

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on


