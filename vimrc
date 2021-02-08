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

" colorscheme
colorscheme gruvbox
set background=dark

" setting linenumbers and relative line numbers
set nu rnu

" incremental searching for vim
set incsearch

" shows command in the status bar
set showcmd

" menus in suggestions
set wildmenu

" setting up indetation and tab to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

" statusline with lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" setting keymaps

so /home/pial/.vim/keymaps.vim


" set mouse option
set mouse=a

" start scrolling when cursor is 8 lines above the bottom
set scrolloff=8

