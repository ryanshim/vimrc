" MAIN SETUP
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Set colorscheme
colorscheme apprentice


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
