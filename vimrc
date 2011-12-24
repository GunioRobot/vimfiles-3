call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=","

set nocompatible
set number
set history=1000
set ruler
set showcmd
set showmode
set hlsearch
set incsearch
set backspace=indent,eol,start
set ignorecase
set smartcase
set nowrap
set tabstop=4 shiftwidth=4
set expandtab

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <leader>v :vsplit<cr>
map <leader>h :split<cr>
