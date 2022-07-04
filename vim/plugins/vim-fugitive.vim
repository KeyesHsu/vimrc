"*********************************************************************
" https://github.com/tpope/vim-fugitive
"*********************************************************************

Plug 'tpope/vim-fugitive'

nnoremap <Leader>gb :Git blame<CR>
vnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gD :Gdiff<Space>
nnoremap <Leader>gd :Gdiff<CR>

