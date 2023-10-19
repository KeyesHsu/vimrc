"*********************************************************************
" Appearance
"*********************************************************************

" Set theme background
execute 'set background=' . g:custom_background

" Set theme colorscheme
execute 'colorscheme ' . g:custom_colorscheme

" Disable the preview window
set completeopt-=preview

" Make comments italic
if empty($TMUX) && empty($SSH_TTY) && empty($SUDO_USER)
    let &t_ZH="\e[3m"
    let &t_ZR="\e[23m"
    highlight Comment cterm=italic
endif

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  autocmd BufReadPost * set relativenumber
endif

