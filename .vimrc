call plug#begin()
call plug#end()
"basic
set clipboard=unnamed "useful when u want to copy and paste using cmd c and cmd v to p and y
set wildmenu "just press tab while u press :e it will show files
set noswapfile
set number

command! CC :e ~/Documents/cpp/a.cpp "custom commands
command! VV :e ~/.vimrc "custom commands

"keybinding
 "automatically close bracket
inoremap ( ()<Left> 
inoremap [ []<Left>
inoremap { {}<Left>
"format code 
map hh gg=G<C-o><C-o> 

"compiles and run c++ code
noremap <F5> <ESC> :w <CR> :!g++ -o %< % && /%< <CR>
inoremap <F5> <ESC> :w <CR> :!g++ -o %< % && /%< <CR>
