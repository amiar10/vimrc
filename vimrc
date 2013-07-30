set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline'
Bundle 'mattn/zencoding-vim'

syntax on
filetype plugin indent on
set laststatus=2
set encoding=utf-8

""""" key remaps
" All hail thy leader
let mapleader = ","

"Easier buffer resizing
nnoremap + <C-w>+
nnoremap - <C-w>-

"Easier buffer navigation
" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

""""" Colorscheme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

"Indentation
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79

"Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Enable line numbers
autocmd FileType javascript,css,php set number
autocmd FileType javascript,html,css,php set incsearch

"Bundle/Plugin customizations
""""""" Supertab
" Just use supertab to 'omnicomplete'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

""""""" Easymotion
"let g:EasyMotion_leader_key = '<Leader>'

""""""" Easymotion
let g:Powerline_symbols = "fancy"
