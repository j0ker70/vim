" Auto source vimrc when made changes in vimrc
autocmd! bufwritepost vimrc ++nested source %


" Plugins installed using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'embark-theme/vim', { 'as': 'embark' }

call plug#end()

" change leader key to <space>, previously it was <alt>
let mapleader = " "

" colorscheme
colorscheme embark

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


" setting keymaps

" copy all to system clipboard
nnoremap <F5> :%y+<CR>

" load snippet for cases
nnoremap ,case dd:-1r ~/.vim/snips/c++/case.cpp<CR>>4jjjjcc

" load template for c++
nnoremap ,temp :-1r ~/Documents/codes/templates/cpp.cpp<CR>8jcc

