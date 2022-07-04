"*********************************************************************
" Plugins
"*********************************************************************

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    echo 'Installing vim-plug...'
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let s:dirname = fnamemodify(expand('<sfile>'), ':h')
let s:enabled_lugins = [
            \ 'asyncrun.vim',
            \ 'auto-pairs.vim',
            \ 'editorconfig-vim.vim',
            \ 'fzf.vim',
            \ 'gruvbox.vim',
            \ 'is.vim',
            \ 'nerdcommenter.vim',
            \ 'nerdtree-git-plugin.vim',
            \ 'nerdtree.vim',
            \ 'vim-airline-themes.vim',
            \ 'vim-airline.vim',
            \ 'vim-auto-save.vim',
            \ 'vim-autoformat.vim',
            \ 'vim-bbye.vim',
            \ 'vim-bufonly.vim',
            \ 'vim-fugitive.vim',
            \ 'vim-illuminate.vim',
            \ 'vim-surround.vim',
            \ 'YouCompleteMe.vim',
            \ ]

function! s:load_plugins()
    for plugin in s:enabled_lugins
        if matchend(plugin, '\.vim') == len(plugin)
            call TrySource(s:dirname . '/' . plugin)
        else
            call TrySource(s:dirname . '/' . plugin . '.vim')
        endif
    endfor
endfunction


" Load plugins
call plug#begin('~/.vim/plugged')
call s:load_plugins()
call plug#end()

