set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" my settings
set number
set tabstop=4
colorscheme blackboard
let mapleader = ","
inoremap jk <Esc>
inoremap fd <bs>
inoremap fds <bs><bs>
inoremap fdsa <bs><bs><bs>
cnoremap jk <Esc>
cnoremap fd <bs>
cnoremap fds <bs><bs>
cnoremap fdsa <bs><bs><bs>
cnoreabbr home C:\Users\Andi64NotebookHDD\
" Visual-Block mode
nnoremap <leader>v <C-Q>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader><cr> O<esc>j
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Compile
nnoremap <leader>c :!javac Kandidat.java
inoremap iy <c-N>
" a little bit of US-keyboard
nnoremap § #
inoremap § #
nnoremap ö [
nnoremap Ö {
nnoremap ä ]
nnoremap Ä }
onoremap ö [
onoremap Ö {
onoremap ä ]
onoremap Ä }
inoremap ö [
inoremap Ö {
inoremap ä ]
inoremap Ä }
inoremap ü \
inoremap Ü '
set encoding=utf-8
set guioptions-=T
set guioptions-=r
set guioptions-=b
set guioptions-=m
set visualbell
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
language messages en
" cd $VIM\vim73\
