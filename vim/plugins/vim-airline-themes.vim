"*********************************************************************
" https://github.com/vim-airline/vim-airline-themes
"*********************************************************************

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme =
      \ get(g:, 'airline_theme', tolower(g:custom_colorscheme))
