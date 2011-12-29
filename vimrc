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
set tabstop=4 shiftwidth=4 softtabstop=4
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
set list
nnoremap <leader><leader><space> :set list!<cr>


" Set tabstop, softtabstop and shiftwidth to the same value
" http://vimcasts.org/episodes/tabs-and-spaces/
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

nnoremap <leader><tab> :Stab<cr>

