set nocompatible

execute pathogen#infect()

syntax on
colorscheme solarized
filetype plugin indent on

set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set title
set ruler
set backspace=indent,eol,start
set laststatus=2
set clipboard=unnamed
set ignorecase
set smartcase
set nobackup
set nowritebackup

" home tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" fake work tabs
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set noexpandtab

" true work tabs
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set noexpandtab

set wrap
set textwidth=80
set colorcolumn=81

" leader and escape
let mapleader = ","
inoremap jj <ESC>

" toggle invisible characters
set list
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

" move cursor by display lines when wrapping
nnoremap j gj
nnoremap k gk

" disable arrow keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" disable help
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
