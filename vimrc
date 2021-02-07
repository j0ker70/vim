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

" copy all to system clipboard
nnoremap <F5> :%y+<CR>

" load snippet for cases
nnoremap ,cs dd:-1r ~/.vim/snips/c++/case.cpp<CR>>4jjjjcc

" load template for c++
nnoremap ,tm :-1r ~/Documents/codes/templates/cpp.cpp<CR>8jcc

" load template for latex
nnoremap ,tx :-1r ~/.vim/snips/latex/latex.tex<CR>

" comment toggle using NerdCommenter Plugin
" comment out a line or a block by pressing ctrl-/
imap <c-_> <esc><leader>c<space>a
vmap <c-_> <leader>c<space>
nmap <c-_> <leader>c<space>

" set mouse option
set mouse=a
