"*********************************************************************
" Vimrc
"*********************************************************************

" Enable nocompatible
set nocompatible

execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/.vim/init.vim'

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
