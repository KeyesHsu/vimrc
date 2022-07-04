"*********************************************************************
" https://github.com/scrooloose/nerdtree
"*********************************************************************

Plug 'preservim/nerdtree'

nnoremap <Leader>nj :NERDTreeFind<CR>
nnoremap <Leader>nn :NERDTreeFocus<CR>
nnoremap <Leader>tn :NERDTreeToggle<CR>

" Show dot files
let NERDTreeShowHidden=1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Turn on natural sorting
let NERDTreeNaturalSort = 1

