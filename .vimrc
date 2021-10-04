" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colo seoul256

set nocompatible
filetype off
filetype plugin indent on
syntax on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set bg=dark
set nu
set hls
auto BufEnter * let &titlestring = hostname() . " :: ". expand("%:p")
set title

" set status line
set ls=2
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=\ [%Y]                   " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
