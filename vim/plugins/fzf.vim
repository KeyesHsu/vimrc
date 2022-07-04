"*********************************************************************
" https://github.com/junegunn/fzf
"*********************************************************************

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '') . ":Files\<CR>"
nnoremap <expr> <Leader>sr (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '') . ":Rg\<Space>"

nmap <Leader><Tab> <Plug>(fzf-maps-n)
xmap <Leader><Tab> <Plug>(fzf-maps-x)
