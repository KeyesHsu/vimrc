"**********************************************************************
" Keymap
"**********************************************************************

inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <Del>
inoremap <C-n> <Down>
inoremap <C-p> <Up>


" Yank full path of current buffer
nnoremap <silent> <Leader>yf :let @+ = expand("%:p")<CR>
" Yank relative path of current buffer
nnoremap <silent> <Leader>yn :let @+ = expand("%")<CR>

