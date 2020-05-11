" Custom key mappings

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splits resizing
nnoremap <M-Left> :vertical resize -2<CR>
nnoremap <M-Right> :vertical resize +2<CR>
nnoremap <M-Up> :resize +2<CR>
nnoremap <M-Down> :resize -2<CR>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Buffers shortcuts
nnoremap <Leader>w :bd<CR>
