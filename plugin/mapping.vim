" copy file to system clipboard
nnoremap <F5> :%y+<CR>

" paste from system clipboard
nnoremap <leader>v "+p

" comment toggle using NerdCommenter Plugin
" comment out a line or a block by pressing ctrl-/
imap <c-_> <esc><leader>c<space>a
vmap <c-_> <leader>c<space>
nmap <c-_> <leader>c<space>

" open a terminal in a vertical split"
nmap <leader>T :vert term<CR>

" moving multiple lines up and down

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" moving single line up and down

nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


" Moving between splits

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Resizing Splits

" up
nnoremap <ESC>[1;5A :resize +1<CR>
" down
nnoremap <ESC>[1;5B :resize -1<CR>
" left
nnoremap <ESC>[1;5D :vertical resize +1<CR>
" right
nnoremap <ESC>[1;5C :vertical resize -1<CR>


" Open netrw
nnoremap <leader>L :Lex!<CR>:vertical resize 30<CR>
