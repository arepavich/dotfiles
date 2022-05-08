local Plug = require('usermod.vimplug')

Plug.begin('~/.config/nvim/plugged')

Plug('jose-elias-alvarez/null-ls.nvim')
Plug('python-rope/ropevim')
--Plug('neoclide/coc.nvim', {branch='release'})
Plug 'sainnhe/edge'
Plug 'EdenEast/nightfox.nvim'
Plug('catppuccin/nvim', {as='catppuccin'})
Plug 'feline-nvim/feline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'windwp/nvim-autopairs'
Plug 'lewis6991/gitsigns.nvim'

-- Neo-tree and dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug.ends()

