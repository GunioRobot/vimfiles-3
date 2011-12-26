call pathogen#infect()
syntax on
filetype plugin indent on

colorscheme molokai

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

nnoremap <leader><space> <c-^>

" http://vim.wikia.com/wiki/Short_mappings_for_common_tasks
vmap > >gv
vmap < <gv
nnoremap Q @q

" make whitespace look like in TextMate and add mapping for easy toggling
set listchars=tab:▸\ ,eol:¬
nnoremap <leader><leader><space> :set list!<cr>
