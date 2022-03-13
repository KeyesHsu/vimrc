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

"**********************************************************************
" Plugin
"**********************************************************************

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes


Plug '907th/vim-auto-save'

Plug 'jiangmiao/auto-pairs'

Plug 'editorconfig/editorconfig-vim'

Plug 'ycm-core/YouCompleteMe'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'moll/vim-bbye'

" Color themes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-autoformat/vim-autoformat'

Plug 'schickling/vim-bufonly'

Plug 'skywind3000/asyncrun.vim'

Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()


"**********************************************************************
" Keymap
"**********************************************************************

inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <Del>
inoremap <C-n> <Down>
inoremap <C-p> <Up>

nnoremap <Leader>nj :NERDTreeFind<CR>
nnoremap <Leader>nn :NERDTreeFocus<CR>
nnoremap <Leader>tn :NERDTreeToggle<CR>

nmap <C-n> <Plug>AirlineSelectNextTab
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

nnoremap <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '') . ":Files\<CR>"
nnoremap <expr> <Leader>sr (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '') . ":Rg\<Space>"

nnoremap <Leader>gb :Git blame<CR>
vnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gD :Gdiff<Space>
nnoremap <Leader>gd :Gdiff<CR>


nnoremap <Leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <Leader>jj :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>jr :YcmCompleter GoToReferences<CR>
nnoremap <LocalLeader>K :YcmCompleter GetDoc<CR>
nnoremap <LocalLeader>k :YcmCompleter GetType<CR>

nnoremap <Leader>= :Autoformat<CR>
vnoremap <Leader>= :Autoformat<CR>

nnoremap <Leader>bo :BufOnly<CR>

" Unload current buffer and delete it from buffer list
nnoremap <Leader>bd :Bdelete<CR>
" Like `:Bdelete`, but really delete the buffer
nnoremap <Leader>bw :Bwipeout<CR>

nnoremap <Leader>: :AsyncRun -mode=term -pos=bottom -rows=10 <Space>

" Yank full path of current buffer
nnoremap <silent> <Leader>yf :let @+ = expand("%:p")<CR>
" Yank relative path of current buffer
nnoremap <silent> <Leader>yn :let @+ = expand("%")<CR>

nmap <Leader><Tab> <Plug>(fzf-maps-n)
xmap <Leader><Tab> <Plug>(fzf-maps-x)

"*********************************************************************
" Autocommands
"*********************************************************************

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd vimenter * ++nested colorscheme gruvbox

"*********************************************************************
" Variables
"*********************************************************************

" Enable AutoSave on Vim startup
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:airline#extensions#tabline#enabled = 1
" Configure the formatting of filenames (see |filename-modifiers|).
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='gruvbox'

let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'medium'
let g:gruvbox_invert_selection = 0

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

let g:asyncrun_open = 8

" Disable python's stdout buffering when running in background.
let $PYTHONUNBUFFERED=1

" Show dot files
let NERDTreeShowHidden=1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Turn on natural sorting
let NERDTreeNaturalSort = 1
let g:NERDCustomDelimiters = {'python': {'left': '#'}}

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
