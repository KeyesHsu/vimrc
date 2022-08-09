"*********************************************************************
" Vimrc
"*********************************************************************

" Enable nocompatible
set nocompatible

if filereadable(expand('~/.vimrc.preload'))
  source ~/.vimrc.preload
endif

execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/.vim/init.vim'

