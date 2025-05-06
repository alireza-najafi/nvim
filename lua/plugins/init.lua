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
        "terraform-ls",
        "svlangserver", -- SystemVerilog and Verilog
      },
    },
  },

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
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
  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used in NvChad
      vim.g.copilot_no_tab_map = true -- Disable tab mapping
      vim.g.copilot_assume_mapped = true -- Assume that the mapping is already done
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
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
