local Plug = require('usermod.vimplug')

Plug.begin('~/.config/nvim/plugged')

Plug 'sainnhe/edge'
Plug 'scrooloose/nerdtree'
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

Plug.ends()


require('nvim-autopairs').setup{}
require('plugins.nvim-cmp')
