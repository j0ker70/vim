
" copy all to system clipboard
nnoremap <F5> :%y+<CR>

" load snippet for cases
autocmd BufNewFile,BufRead *.cpp nnoremap ,cs dd:-1r ~/.vim/snips/c++/case.cpp<CR>>4jjjjcc

" load template for c++
autocmd BufNewFile,BufRead *.cpp nnoremap ,tm :-1r ~/Documents/codes/templates/cpp.cpp<CR>8jcc

" load template for latex
autocmd BufNewFile,BufRead *.tex nnoremap ,tx :-1r ~/.vim/snips/latex/latex.tex<CR>

" compile tex file
autocmd BufNewFile,BufRead *.tex nnoremap <leader>p :!pdflatex %<CR>

" open pdf file with zathura
autocmd BufNewFile,BufRead *.tex nnoremap <leader>z :!zathura %:r.pdf &<CR><CR>

" spell checking for latex files
autocmd BufNewFile,BufRead *.tex set spell

" each line of latex file should be at most 120 letters marker
autocmd BufNewFile,BufRead *.tex set colorcolumn=120

" each line of latex file should be at most 120 letters
autocmd BufNewFile,BufRead *.tex set textwidth=120

" comment toggle using NerdCommenter Plugin
" comment out a line or a block by pressing ctrl-/
imap <c-_> <esc><leader>c<space>a
vmap <c-_> <leader>c<space>
nmap <c-_> <leader>c<space>
