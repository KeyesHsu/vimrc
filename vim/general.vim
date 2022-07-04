"**********************************************************************
" General
"**********************************************************************
" Enable nocompatible
set nocompatible

" Don’t show the intro message when starting Vim
set shortmess=atI

" Enable syntax
syntax enable

let mapleader = ' '
let maplocalleader = ','

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" Allow backspace in insert mode
set backspace=indent,eol,start

" Use the OS clipboard by default
if has('clipboard')
    if has('unnamedplus')
        set clipboard=unnamed,unnamedplus
    else
        set clipboard=unnamed
    endif
endif

" Allow buffer switching without saving
set hidden

" Enable line numbers
set number

" Turn off modeline support
set nomodeline
set modelines=0

" Disable the reading of .vimrc, .exrc and .gvimrc in the current
" directory.
" Recommended place for your personal initializations:
"     Unix                $HOME/.vimrc
"     OS/2                $HOME/.vimrc or $VIM/.vimrc (or _vimrc)
"     MS-DOS and Win32    $HOME/_vimrc or $VIM/_vimrc
"     Amiga               s:.vimrc or $VIM/.vimrc
set noexrc

" Shell and write commands are not allowed in '.vimrc' and '.exrc'
" in the current directory and map commands are displayed.
set secure

" Highlight dynamically as pattern is typed
set incsearch

" Highlight searches
set hlsearch

" Enhance command-line completion
set wildmenu
set wildmode=longest:full,full

" Indicates a fast terminal connection
set ttyfast

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper
" case characters.
" Only used when the search pattern is typed and 'ignorecase' option is on.
set smartcase

" Show the cursor position
set ruler

" Highlight current line
set cursorline

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around
set nostartofline

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Enable mouse in all modes
set mouse=a

" Set default encoding to utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,default,latin1

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Centralize backups, swapfiles and undo history
" The directory must exist, Vim will not create it for you.
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists('&undodir')
    set undodir=~/.vim/undo
    set undofile
endif

" Support true color
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif
