set nocompatible

execute pathogen#infect()

" solarized on xterm-256color
syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

filetype plugin indent on

" general options
set backspace=indent,eol,start
set clipboard=unnamed
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noerrorbells
set nomodeline
set noswapfile
set nowritebackup
set scrolloff=3
set showcmd
set showmode
set smartcase
set ttyfast
set visualbell
set wildmenu
set wildmode=list:longest

set ts=4 sts=4 sw=4
set expandtab
" set ts=8 sts=8 sw=8
" set noexpandtab

set autoindent
set colorcolumn=81
" set cursorcolumn
set cursorline
set encoding=utf-8
set number
set textwidth=80
set wrap

" leader
let mapleader = ","

" invisible characters
set list
set listchars=tab:▸\ ,eol:¬,trail:~
nmap <leader>l :set list!<CR>

" vertical split
nnoremap <leader>w <C-w>v<C-w>l

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
