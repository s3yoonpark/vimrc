source $VIMRUNTIME/vimrc_example.vim
au GUIEnter * simalt ~x
set belloff=all
set hls
set is
set cb=unnamed
set gfn=MesloLGS_NF:h10
set ts=4
set sw=4
set si
set nobackup
set noswapfile
set noundofile

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 -O2 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
