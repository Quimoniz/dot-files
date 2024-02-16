

"""""""""""""
" Fix Mouse
"""""""""""""
set mouse=v

""""""""""""""""""""""""""
"  TABS and INDENTATION
""""""""""""""""""""""""""
" automatic indentation on new line
set autoindent
" replace 'tab' with spaces on input
set expandtab
" usual indentation level
set tabstop=4
" for the >> and << operators
set shiftwidth=4

""""""""""""""""""
" General Coding
""""""""""""""""""
syntax on
set number


" Show color schemes from Vim session
" When you open Vim, you can type the following instruction to get a list of available color schemes.
" :colorscheme [space] [press 'Ctrl + d']
" or see the installation directory directly: ls /usr/share/vim/vim*/colors | grep .vim
colorscheme slate


"""""""""""""""""""""""""""""""""""""""""""""
" Navigating Windows
" (openable with '-O'  or '-o' respectively)
"""""""""""""""""""""""""""""""""""""""""""""
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" Otherwise Ctrl + w + w   for selecting the next window



"""""""""""""""""""""""""""""""""""""""""""""""""
" Navigating Tabs
" (use -p to open files in tabs,
"  and :tabnew for opening new tabs)
"""""""""""""""""""""""""""""""""""""""""""""""""
" Switching tabs with 'gt' and 'gT' respectively
"""""""""""""""""""""""""""""""""""""""""""""""""
