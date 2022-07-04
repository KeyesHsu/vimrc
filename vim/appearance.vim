"*********************************************************************
" Appearance
"*********************************************************************

" Set theme background
if $background == "light"
    set background=light
else
    set background=dark
endif

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
