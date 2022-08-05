-- Configuration borrowing heavily from https://github.com/Civitasv/runvim/blob/master/lua/user/plugins.lua
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
})

-- Install Plugins
return packer.startup(function(use)
  use("wbthomason/packer.nvim") -- Have packer manage itself
  use("nvim-lua/plenary.nvim") -- Utility library which is a dependency of many plugins
  use("numToStr/Comment.nvim") -- Easy commenting
  use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
  use("lukas-reineke/indent-blankline.nvim") -- Guide lines for indented blocks
  use("ojroques/nvim-osc52") -- Yank directly from a buffer in a remote SSH session to the local clipboard
  use({"folke/which-key.nvim", config=require("which-key").setup()})

  -- Colorschemes
  use("rebelot/kanagawa.nvim")

  -- Icons
  use("kyazdani42/nvim-web-devicons")

  -- cmp plugins
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("saadparwaiz1/cmp_luasnip")

  -- snippets
  use("L3MON4D3/LuaSnip")

  -- Git
  use("lewis6991/gitsigns.nvim")
  use("tpope/vim-fugitive")

  -- Motion
  use("ggandor/leap.nvim")
  use("tpope/vim-repeat")

  -- Debugging
  use("mfussenegger/nvim-dap")

  -- Testing
  use("vim-test/vim-test")

  -- Telescope
  use("nvim-telescope/telescope.nvim")

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  })

  -- Statusline / Winbar
  use("nvim-lualine/lualine.nvim")
  use("b0o/incline.nvim")

  -- Neotree
  use({
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"MunifTanjim/nui.nvim"},
      {"s1n7ax/nvim-window-picker"}
    }
  })

  use("stevearc/aerial.nvim")

  use("ahmedkhalf/project.nvim")

  -- Sessions
  use({
    "olimorris/persisted.nvim",
    requires = {{"nvim-telescope/telescope.nvim"}}
  })

  -- LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("kylechui/nvim-surround")
  use("jose-elias-alvarez/null-ls.nvim")
  use("folke/lua-dev.nvim")


  -- Language-specific Improvements
  -- Python Improvements
  use("Vimjas/vim-python-pep8-indent")
  use("python-rope/ropevim")

  -- Markdown support
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      vim.api.nvim_set_var("mkdp_ip", "127.0.0.1")
      vim.api.nvim_set_var("mkdp_port", 9009)
      vim.api.nvim_set_var("mkdp_echo_preview_url", true)
    end
  })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    packer.sync()
  end
end
)
