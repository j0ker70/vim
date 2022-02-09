" colorscheme
colorscheme dracula
"set background=dark

" transparent
hi Normal guibg=NONE ctermbg=NONE

" setting linenumbers and relative line numbers
set nu rnu

" incremental searching for vim
set incsearch

" Set default split to be right or bottom
set splitright
set splitbelow

" Tell vim it's a fast terminal
set ttyfast

" Sets vim to smart case
" If search is all lowercase, search insensitively; if you include a capital
" it becomes a case sensitive match
set ignorecase smartcase

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

" set mouse option
set mouse=a

" start scrolling when cursor is 8 lines above the bottom
set scrolloff=8

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" enable markdown in vimwiki
"let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" This defines one wiki located at ~/my_site/. When converted to HTML, the
" produced HTML files go to ~/public_html/ .
let g:vimwiki_list = [{'path': '~/Documents/MyWiki/', 'path_html': '~/Documents/MyWiki/html/'}]

" Netrw settings

let g:netrw_liststyle = 3
let g:netrw_banner = 0

" have mouse support inside alacritty
if $TERM == 'alacritty'
  set ttymouse=sgr
endif

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
