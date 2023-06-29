local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
     "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Colorschemes
    { "rebelot/kanagawa.nvim" },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme tokyonight]])
      end,
    },
    -- Misc Utils
    { "windwp/nvim-autopairs", config = true }, -- Autopairs, integrates with both cmp and treesitter
    { "lukas-reineke/indent-blankline.nvim", config = true }, -- Guide lines for indented blocks
    { "ojroques/nvim-osc52", config = true},
    {
      "kylechui/nvim-surround",
      config = {
        keymaps = {
          visual = "as"
        }
      }
    },
    { "hood/popui.nvim"}, -- Tools for floating inputs/menus
    {
      "folke/trouble.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
        config = function()
          require("trouble").setup()
          vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
          {silent = true, noremap = true}
          )
          vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
          {silent = true, noremap = true}
          )
          vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
          {silent = true, noremap = true}
          )
          vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
          {silent = true, noremap = true}
          )
          vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
          {silent = true, noremap = true}
          )
          vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
          {silent = true, noremap = true}
          )
        end,
      },
    },

    -- Icons
    {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
      config = {
        -- your personal icons can go here (to override)
        -- you can specify color or cterm_color instead of specifying both of them
        -- DevIcon will be appended to `name`
        override = {
          zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
          }
        },

        -- globally enable default icons (default to false)
        -- will get overriden by `get_icons` option
        default = true;
      },
    },

    -- Snippets
    {
      "L3MON4D3/LuaSnip",
      config = function()
        require("plugins.luasnip")
      end,
    },
    {
      "hrsh7th/nvim-cmp",
      config = function()
        require("plugins.nvim-cmp")
      end,
    },
    { "hrsh7th/cmp-nvim-lsp" },
    { "saadparwaiz1/cmp_luasnip" },

    -- File Browser
    {
      "nvim-neo-tree/neo-tree.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "s1n7ax/nvim-window-picker",
      },
      config = function()
        require('plugins.neotree')
      end,
    },

    -- File Structure Tree
    {
      "stevearc/aerial.nvim",
      config = {
        backends = { "lsp", "treesitter", "markdown", "man"},
        on_attach = function(bufnr)
          local aerial = require('aerial')
          -- Toggle the aerial window with <leader>a
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>go', '', {
            callback = function()
              aerial.toggle({focus = false})
            end
          })
          -- Jump forwards/backwards with '{' and '}'
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '', {callback = aerial.prev})
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '', {callback = aerial.next})
          -- Jump up the tree with '[[' or ']]'
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '', {callback = aerial.prev_up})
          vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '', {callback = aerial.next_up})
        end,
        manage_folds = true,
      }
    },

    -- Statusline / Winbar
    {
      "nvim-lualine/lualine.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("plugins.lualine")
      end
    },
    {
      "b0o/incline.nvim",
      config = function()
        require("plugins.incline")
      end
    },

    -- Git
    { "lewis6991/gitsigns.nvim", config = true},
    { "tpope/vim-fugitive" },

    -- GitHub
    {
      "pwntester/octo.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "nvim-tree/nvim-web-devicons",
      },
      config = true
    },

    -- LSP
    {
      "williamboman/mason.nvim",
      config = function()
        require("plugins.mason")
      end,
      dependencies = {
        "williamboman/mason-lspconfig.nvim",
      },
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        require('lsp')
      end
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        local nls = require("null-ls")
        nls.setup({
          sources = {
            nls.builtins.code_actions.gitsigns,
          },
        })
      end
    },
    { "folke/neodev.nvim" },

    -- Treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
      build = ":TSUpdate",
      config = function()
        require("plugins.treesitter")
      end,
    },

    -- Motion
    {
      "ggandor/leap.nvim",
      config = function()
        local leap = require("leap")
        leap.set_default_keymaps()
      end
    },
    { "tpope/vim-repeat" },

    -- Telescope
    { "nvim-telescope/telescope.nvim" },

    -- Comments
    { "numToStr/Comment.nvim", config = true}, -- Easy commenting
    { "folke/todo-comments.nvim" }, -- Find TODOs

    -- Python-specific improvements
    { "Vimjas/vim-python-pep8-indent" },

    -- Markdown support
    {
      "iamcco/markdown-preview.nvim",
      build = function() vim.fn["mkdp#util#install"]() end,
      config = function()
        vim.api.nvim_set_var("mkdp_ip", "127.0.0.1")
        vim.api.nvim_set_var("mkdp_port", 9009)
        vim.api.nvim_set_var("mkdp_echo_preview_url", true)
      end
    }
  }
})

-- require("plugins.plugins")
--
-- require("plugins.autopairs")
-- require("plugins.treesitter")
-- require("plugins.nvim-web-devicons")
-- require("plugins.leap")
-- require("plugins.neotree")
-- require("plugins.gitsigns")
-- require("plugins.null-ls")
-- require("plugins.nvim-cmp")
-- require("plugins.lualine")
-- require("plugins.octo")
-- require("plugins.comment")
-- require("plugins.indentline")
-- require("plugins.surround")
-- require("plugins.persisted")
-- require("plugins.project")
-- require("plugins.incline")
-- require("plugins.aerial")
-- require("plugins.luasnip")
-- require("plugins.osc52")
-- require("plugins.mason")
-- require("plugins.which-key")
-- -- require("plugins.todo-comments")
