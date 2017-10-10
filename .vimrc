"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"self
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

syntax on

" vim new file template (skeleton)
au BufNewFile *.html 0r ~/.vim/html.skel

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
