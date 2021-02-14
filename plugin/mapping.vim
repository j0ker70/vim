" copy file to system clipboard
nnoremap <F5> :%y+<CR>

" paste from system clipboard
nnoremap <leader>v "+p

" load snippet for cases
autocmd BufNewFile,BufRead *.cpp nnoremap ,cs dd:-1r ~/.vim/snips/c++/case.cpp<CR>>4jjjjcc

" load template for c++
autocmd BufNewFile,BufRead *.cpp nnoremap ,tm :-1r ~/.vim/snips/c++/template.cpp<CR>8jcc

" load modular functions
autocmd BufNewFile,BufRead *.cpp nnoremap ,ma :-1r ~/.vim/snips/c++/math.cpp<CR>25j

" load template for latex
autocmd BufNewFile,BufRead *.tex nnoremap ,tx :-1r ~/.vim/snips/latex/template.tex<CR>

" compile tex file
autocmd BufNewFile,BufRead *.tex nnoremap <leader>p :!pdflatex %<CR>

" open pdf file with zathura
autocmd BufNewFile,BufRead *.tex nnoremap <leader>z :!zathura %:r.pdf &<CR><CR>

" comment toggle using NerdCommenter Plugin
" comment out a line or a block by pressing ctrl-/
imap <c-_> <esc><leader>c<space>a
vmap <c-_> <leader>c<space>
nmap <c-_> <leader>c<space>