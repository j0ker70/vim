set filetype=tex

" spell checking for latex files
set spell

" each line of latex file should be at most 120 letters marker
"set colorcolumn=80

" each line of latex file should be at most 120 letters
set textwidth=75

" colorscheme papercolor
colorscheme PaperColor
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }



" load template for latex
nnoremap ,tx :-1r ~/.vim/snips/latex/template.tex<CR>

" compile tex file
nnoremap <leader>p :!pdflatex %<CR>

" open pdf file with zathura
nnoremap <leader>z :!zathura %:r.pdf &<CR><CR>
