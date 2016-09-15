
filetype plugin indent on

syntax enable

"
" Plugins
"
call plug#begin('~/.config/nvim/plugged')

" Neomake
Plug 'neomake/neomake'

" Deoplete
"   Autocompletion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-clang'
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#clang#libclang_path = "/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1"
"let g:deoplete#sources#clang#clang_header = "/usr/include/clang"

" Gruvbox
"   Colorscheme
Plug 'morhetz/gruvbox'

" GitGutter
"   Shows changes per line in the gutter
Plug 'airblade/vim-gitgutter'
set updatetime=250      " Sets vim to update every quarter second

" Clang-format
Plug 'rhysd/vim-clang-format'
let g:clang_format#code_style = 'llvm'

" Add plugins to runtimepath
call plug#end()

" Colorscheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme gruvbox

" neomake options
autocmd! BufWritePost * Neomake
let g:neomake_cpp_clang_maker = {
            \ 'args': ['-fsyntax-only', '-std=c++14', '-Wall', '-Wextra', '-Wshadow'],
            \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
            \ }

" I have no idea why, but it seems to ignore the first and last checks
let g:neomake_cpp_clangtidy_maker = {
            \ 'exe': 'clang-tidy',
            \ 'args': ['--checks="*,*,-google-*,-readability-*,*"'],
            \ 'errorformat':
            \ '%E%f:%l:%c: fatal error: %m,' .
            \ '%E%f:%l:%c: error: %m,' .
            \ '%W%f:%l:%c: warning: %m,' .
            \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
            \ '%E%m',
            \ }
"let g:neomake_cpp_enabled_makers = ['clang', 'clangtidy']
let g:neomake_cpp_enabled_makers = ['clangtidy']

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

let g:neomake_open_list = 2

"
" Settings for various things
"

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set expandtab       " Replace tabs with spaces
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set number          " Show line numbers.
set fileformat=unix
let c_space_errors=1

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
                    " command).

set mouse=a         " Enable the use of the mouse.

set scrolloff=3     " Keep 3 lines below and above cursor

set foldmethod=syntax "Enable folding based on syntax

