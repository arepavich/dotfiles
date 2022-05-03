let mapleader="\<Space>"

" Easier navigation between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ---------- Coc binds ----------
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L
nmap <silent> gi <Plug>(coc-implementations)
nmap <silent> gr <Plug>(coc-references)

" ---------- NerdTree binds ----------
" Trigger NerdTree
map <C-n> :NERDTreeToggle<CR>
" Show hidden files in NerdTree buffer
let NERDTreeShowHidden=1 
