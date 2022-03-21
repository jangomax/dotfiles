" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" q to close buffer 
"nnoremap <Leader>q :clo<CR>
nnoremap <silent> <Leader>q :Sayonara!<CR>

" Alt + / to unhighlight search results
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Leader + f to toggle nvim-tree
nnoremap <silent> <Leader>f :NvimTreeToggle<CR>

cmap W w
