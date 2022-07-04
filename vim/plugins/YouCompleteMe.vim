"*********************************************************************
" https://github.com/Valloric/YouCompleteMe
"*********************************************************************

Plug 'ycm-core/YouCompleteMe'

nnoremap <Leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <Leader>jj :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>jr :YcmCompleter GoToReferences<CR>
nnoremap <LocalLeader>K :YcmCompleter GetDoc<CR>
nnoremap <LocalLeader>k :YcmCompleter GetType<CR>

let g:ycm_filetype_whitelist = {
            \ 'c': 1,
            \ 'cpp': 1,
            \ 'java': 1,
            \ 'python': 1,
            \ 'sh': 1,
            \ 'vim': 1,
            \ 'zsh': 1,
            \ }
" Disable diagnostic display
let g:ycm_show_diagnostics_ui = 0
