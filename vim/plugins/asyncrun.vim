"*********************************************************************
" https://github.com/skywind3000/asyncrun.vim
"*********************************************************************

Plug 'skywind3000/asyncrun.vim'

nnoremap <Leader>: :AsyncRun -mode=term -pos=bottom -rows=10 <Space>

let g:asyncrun_open = 8
" Disable python's stdout buffering when running in background.
let $PYTHONUNBUFFERED=1
