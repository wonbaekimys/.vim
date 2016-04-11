"set ts=4
"set sw=4
set nu
set nows
set ruler
set backspace=indent,eol,start

set ts=2
set sw=2
set expandtab

" Applying syntax color
syntax on
set hlsearch
"filetype plugin on

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif


"syntax on
"sy enable
"set ts=4
"set sw=4
set ai
"set hls
"set ru
"set magic
"set nuw=5
"set ls=2
"set esckeys
"set history=1000
"set backspace=indent,eol,start
"set iskeyword-=_
"set t_Co=256
"set t_ut=
"set tags+=/usr/include/tags
""set undofile
""set undodir=~/.vim/undo
"filetype on
"filetype plugin on
"colorscheme peachpuff
"hi CursorLine cterm=bold term=none ctermbg=235
"hi Visual cterm=bold ctermbg=darkgrey
"hi Search term=reverse ctermbg=lightblue ctermfg=black
"" disable auto comment
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"
"" disable following two lines when you use 'black on white' scheme
""set cursorline
