colorscheme elflord
syntax on

" Indent
  set autoindent " automatical insertion of indent in new line
  set expandtab " expand tab as space
  set tabstop=2 " number of spaces in counting
  set softtabstop=2 " number of spaces on vim-view
  set shiftwidth=2 " number of spaces which is inserted in antoindent

" Stem
  let mapleader = "\<Space>"
  let maplocalleader = ","
" Window
  " Split
  nnoremap sv :<C-u>sp<CR>
  nnoremap sh :<C-u>vs<CR>
  " Move
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  nnoremap <C-h> <C-w>h
  " Save&Quit
  nnoremap <Leader>w :<C-u>w<CR>
  nnoremap <Leader>q :<C-u>q<CR>
  nnoremap <Leader>1 :<C-u>wq<CR>
  nnoremap <Leader>n :<C-u>n<CR>
  nnoremap <Leader>N :<C-u>wn<CR>
