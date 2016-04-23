"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"self
Plugin 'gmarik/Vundle.vim'

"add plugin
Plugin 'othree/html5.vim'
Plugin 'davidhalter/jedi-vim'

call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" jedi-vim settings
let g:jedi#popup_on_dot = 0

syntax on
filetype plugin indent on

" vim new file template (skeleton)
au BufNewFile *.html 0r ~/.vim/html.skel

let python_version_3=1
let python_highlight_all=1
"let g:js_indent = 'home/harvey/.vim/indent/javascript.vim'

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set bg=dark
set nu
auto BufEnter * let &titlestring = hostname() . " :: ". expand("%:p")
set title

