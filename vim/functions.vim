" This file is part of the Other Library package.

" Origin project:
" https://github.com/apemost/vimrc

" Origin file location:
" https://github.com/apemost/vimrc/blob/main/vim/functions.vim

" LICENSE file:
" https://github.com/apemost/vimrc/blob/main/LICENSE


function! TrySource(filepath)
  if filereadable(a:filepath)
    execute 'source' fnameescape(a:filepath)
  endif
endfunction

