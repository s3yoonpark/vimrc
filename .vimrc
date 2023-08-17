source $VIMRUNTIME/vimrc_example.vim

au GUIEnter * simalt ~x
set hls
set is
set cb=unnamed
set gfn=Fixedsys:h10
set ts=4
set sw=4
set si
set autochdir
cd C:\Users\20Parks\Desktop\CS

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap { {
inoremap {} {}
nnoremap <F8> :w <bar> !py %:r.py<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wall -Wextra -Wshadow -DDEBUG -ggdb3 -fmax-errors=2 -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

set nu
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
