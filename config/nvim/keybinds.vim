let mapleader="\<Space>"

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Goto definition
nmap <silent> gd <Plug>(coc-definition)

" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

" Trigger NerdTree
map <C-n> :NERDTreeToggle<CR>
" Show hidden files in NerdTree buffer
let NERDTreeShowHidden=1 
