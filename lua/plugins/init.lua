return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { --this plugin is needed to install prettier
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require "configs.null-ls" -- require your null-ls config here (example below)
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "rust-analyzer",
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "prettier",
        "pyright",
        "ts_ls", -- Typescript Langugage Server
        "tailwindcss",
        "eslint",
      },
    },
  },

  -- {
  --   'mrcjkb/rustaceanvim',
  --   ft = "rust",
  --   version = '^5', -- Recommended
  --   lazy = false, -- This plugin is already lazy
  --   ["rust-analyzer"] = {
  --     cargo = {
  --       allFeatures = true,
  --     },
  --     checkOnSave={
  --       command = "clippy"
  --     },
  --
  --   }
  -- },

  {
    "rust-lang/rust.vim",
    ft = "rust",
  },
  -- -- {
  --   "simrat39/rust-tools.nvim",
  --   ft = "rust",
  --   dependencies = "neovim/nvim-lspconfig",
  --   opts = function ()
  --     return require("configs.rust-tools")
  --   end,
  --   config = function (_, opts)
  --     require("rust-tools").setup(opts)
  --   end,
  -- },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
