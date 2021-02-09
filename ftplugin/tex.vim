" spell checking for latex files
autocmd BufNewFile,BufRead *.tex set spell

" each line of latex file should be at most 120 letters marker
autocmd BufNewFile,BufRead *.tex set colorcolumn=120

" each line of latex file should be at most 120 letters
autocmd BufNewFile,BufRead *.tex set textwidth=120

