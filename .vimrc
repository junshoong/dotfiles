"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"self
Plugin 'gmarik/Vundle.vim'

"add plugin
Plugin 'othree/html5.vim'
"Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" jedi-vim settings
"let g:jedi#popup_on_dot = 0
"let g:jedi#force_py_version = 3

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
