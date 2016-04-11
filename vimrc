set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'whatyouhide/vim-gotham'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Basic settings
set nu
set nows
set ruler
set ai
set si
set backspace=indent,eol,start

" Converting tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Noexpandtab for Makefile
autocmd FileType make setlocal noexpandtab

" Applying syntax color
set t_Co=256
set t_ut=
syntax on
color gotham256
set hlsearch

" Open a file at the same line as closed
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
