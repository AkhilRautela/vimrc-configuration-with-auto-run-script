:autocmd BufNewFile *.cpp 0r ~/skeleton.cpp
"comment the above line if not using any skeleton else give path for your skeleton file in above path.
autocmd filetype cpp nnoremap <F6> :w <bar> !clear && g++ -std=c++11 -O2 -Wall % -o %:r.out && ./%:r.out < input.txt <CR>
"if pressed F6 then it will autmatically run in previous input.
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && ./run.sh %:r c++ y <CR>
"else use F5 for to give input same goes for the python file. 
autocmd filetype python nnoremap <F5> :w <bar> !clear && ./run.sh %:r py y<CR>
autocmd filetype python  nnoremap <F6> :w <bar> !clear && python %:r.py < input.txt <CR>
inoremap jj  <ESC>
"mapped jj with esc key you can change it accordingly"
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set nocompatible
syntax on
set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
nmap Q <Nop> 
set noerrorbells visualbell t_vb=
set mouse+=a
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>


