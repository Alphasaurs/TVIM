"important links
"https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
"https://techinscribed.com/91-vim-keyboard-shortcuts/
"https://bhupesh.me/learn-how-to-use-code-snippets-vim-cowboy/
"
call plug#begin()
Plug 'gruvbox-community/gruvbox'

Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg' 

 
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"

Plug 'honza/vim-snippets'

call plug#end()
"appearance
"
colorscheme gruvbox 
set guifont=Menlo\ Regular:h36
"basic
set clipboard=unnamed "useful to copy from different os to vim without pressing cmd c /cmd v in vim
set tabstop=2 "changing tab size to 2 spaces
set relativenumber
set nocompatible
set wildmenu "just press tab while u press :e it will show files
set autoindent
set autoread
set cin
set expandtab
set history=1000
set nohlsearch
set ignorecase
set incsearch
set mousehide
set noerrorbells
set noswapfile
set number
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
set vb t_vb=et 
set background=dark
set timeoutlen=200

"cpp
inoremap jj <Esc>
nmap oo o<Esc>k
nmap OO O<Esc>j
"find opening and closing bracket
noremap <TAB>  
"format code 
map hh gg=G<C-o><C-o>
"previous tab
noremap <F1> <ESC>:tabprev <CR> 
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
"saving code
map <F2> :w <CR>
"compiles c++ code
noremap <F3> <ESC> :w <CR> :make <CR>
inoremap <F3> <ESC> :w <CR> :make <CR>
"compiles,run, without warning, with input  
noremap <F4> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -DONPC -O2 -o %< % && ./%< < inp/inp.txt<CR>
inoremap <F4> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -DONPC -O2 -o "%<" "%" && "./%<" < inp/inp.txt<CR>
"compiles ,run,with warning,no input
noremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
"compiles, run ,with warning, with input
noremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
 









"""concepts
"diff= vim -d origfile tocomparefile || vim -do origfile tocomparefile

"find and replace in all line. Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.
":%s/foo/bar/g
"For specific lines:Change each 'foo' to 'bar' for all lines from line 6 to line 10 inclusive.
":6,10s/foo/bar/g





 
 
"others
let c_syntax_for_h=""

let g:netrw_keepdir = 0

let g:netrw_localrmdir='rm -r'

let mapleader = "\<Space>"
noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>u i_<ESC>r
noremap <Leader>n :vs 
noremap <Leader>q :q<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>s :source ~/.vimrc <CR>



command! Cpp :cd ~/cpp/
command! Cp :e ~/cpp/a.cpp
command! Us :e ~/.vim/UltiSnips/
command! As :e ~/.vimrc
command! Vm :e ~/.vim/
"autocmd FocusLost * redraw!
"command! LLDB :!clang++ -fsanitize=address -std=c++20 -O0 -g -o "%<" "%" && lldb %<
command! Gdb !g++ -std=c++20 -O0 -g -o %< 


filetype on
filetype plugin on
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType haskell setlocal makeprg=ghci\ %
autocmd FileType python setlocal makeprg=python3\ %
autocmd FileType sh setlocal makeprg=%
 
syntax on
 
set shellslash
filetype indent on
let g:tex_flavor='latex'
set sw=4
set iskeyword+=:
