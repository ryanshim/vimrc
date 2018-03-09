""""""""""""""
" MAIN SETUP "
""""""""""""""
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

" Tab navigation like Firefox.
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab>   :bnext<CR>



""""""""""""""""
" VUNDLE SETUP "
""""""""""""""""
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
"Plugin 'itchyny/lightline.vim'

" add airline plugin
Plugin 'vim-airline/vim-airline'
" add airline themes plugin
Plugin 'vim-airline/vim-airline-themes'

" add YouCompleteMe plugin
Plugin 'Valloric/YouCompleteMe'

" add enhanced c++ syntax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

" add plugin for nord vim
Plugin 'arcticicestudio/nord-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='jellybeans'
let g:airline_theme='nord'





"""""""""""""""""""
" SET COLORSCHEME "
"""""""""""""""""""
"autocmd ColorScheme * highlight Normal ctermbg=235
set t_Co=256
" Set colorscheme
"colorscheme jellybeans 
"colorscheme monokai
"colorscheme apprentice
"colorscheme spring-night
"colorscheme gotham256
"colorscheme gotham
"colorscheme spartan
colorscheme nord

" change background color for crayon
"autocmd ColorScheme * highlight Normal ctermbg=234
"colorscheme crayon

" transparent background
"hi Normal guibg=NONE ctermbg=NONE


"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
