" MAIN SETUP
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" set line numbers
set number

" enable syntax highlighting
syntax enable

autocmd ColorScheme * highlight Normal ctermbg=235
" Set colorscheme
"colorscheme jellybeans 
"colorscheme monokai
"colorscheme apprentice
colorscheme spring-night

" change background color for crayon
"autocmd ColorScheme * highlight Normal ctermbg=234
"colorscheme crayon

" transparent background
"hi Normal guibg=NONE ctermbg=NONE

" Autocomplete braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
" autocomplete parentheses
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     ( 
inoremap ()     () 


" VUNDLE SETUP
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ADD PLUGINS BELOW 
" Keep Plugin commands between vundle#begin/end.

" add nerdTree plugin
Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree     " auto start nerdTree

" add lightline plugin
Plugin 'itchyny/lightline.vim'

" add YouCompleteMe plugin
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
