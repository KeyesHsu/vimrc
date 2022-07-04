"*********************************************************************
" https://github.com/907th/vim-auto-save
"*********************************************************************

Plug '907th/vim-auto-save'

" Enable AutoSave on Vim startup
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
