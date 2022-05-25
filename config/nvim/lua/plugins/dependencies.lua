local Plug = require('usermod.vimplug')

Plug.begin('~/.config/nvim/plugged')

Plug('jose-elias-alvarez/null-ls.nvim')
Plug('python-rope/ropevim')
--Plug('neoclide/coc.nvim', {branch='release'})
-- Color schemes
Plug 'sainnhe/edge'
Plug 'EdenEast/nightfox.nvim'
Plug('catppuccin/nvim', {as='catppuccin'})
Plug "rebelot/kanagawa.nvim"
-- Statusline
Plug 'feline-nvim/feline.nvim'
Plug 'nvim-lualine/lualine.nvim'
-- Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'
Plug 'tpope/vim-fugitive'
-- LSP
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
Plug 's1n7ax/nvim-window-picker'

Plug 'nvim-telescope/telescope.nvim'

-- Commenting
Plug 'numToStr/Comment.nvim'

-- Indent visibility
Plug 'lukas-reineke/indent-blankline.nvim'

Plug.ends()

