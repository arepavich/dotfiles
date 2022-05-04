call plug#begin()
" A fuzzy file finder
Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" A Tree-like side bar for better navigation
Plug 'scrooloose/nerdtree'
" A cool status bar
"Plug 'vim-airline/vim-airline'
" Airline themes
"Plug 'vim-airline/vim-airline-themes'
Plug 'feline-nvim/feline.nvim'
" Vim-Plug
Plug 'Mofiqul/dracula.nvim'
" Better syntax-highlighting for filetypes in vim
Plug 'nvim-treesitter/nvim-treesitter'
" Context in status line
Plug 'SmiteshP/nvim-gps'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'
" ---------- Themes ----------
" Nord
Plug 'andersevenrud/nordic.nvim'
" Edge
Plug 'sainnhe/edge'
call plug#end()

filetype plugin indent on
syntax on

if has('termguicolors')
	set termguicolors
endif

colorscheme edge

"Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'edge'

" Treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
