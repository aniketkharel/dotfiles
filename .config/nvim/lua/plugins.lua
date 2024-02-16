local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  "windwp/nvim-autopairs",
  "nvim-lua/plenary.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "norcalli/nvim-colorizer.lua",
  "akinsho/toggleterm.nvim",
  "numToStr/Comment.nvim", -- comment
  "JoosepAlviste/nvim-ts-context-commentstring",
  "p00f/clangd_extensions.nvim",
  "RRethy/vim-illuminate",
  "lewis6991/impatient.nvim",
  "onsails/lspkind.nvim",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",  -- buffer completions
  "hrsh7th/cmp-path",    -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "hrsh7th/nvim-cmp",    -- The completion plugin
  "hrsh7th/cmp-nvim-lua",
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  "nvim-treesitter/nvim-treesitter",
  "kylechui/nvim-surround",
  "ggandor/leap.nvim",
  {
    "m-demare/hlargs.nvim",
    requires = { "nvim-treesitter/nvim-treesitter" },
  },
  "christoomey/vim-tmux-navigator",
  "neovim/nvim-lspconfig",
  "glepnir/lspsaga.nvim",
  "simrat39/rust-tools.nvim",
  "mfussenegger/nvim-dap",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "L3MON4D3/LuaSnip",
    wants = { "friendly-snippets", "vim-snippets" },
  },
  "rafamadriz/friendly-snippets",
  "honza/vim-snippets",
  "saadparwaiz1/cmp_luasnip",
  {
    "iamcco/markdown-preview.nvim",
    build = "pnpm up && cd app && pnpm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  --gitsign
  "lewis6991/gitsigns.nvim",
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  -- buffer and lualine
  {
    'nvim-lualine/lualine.nvim',
  },
  { 'akinsho/bufferline.nvim', version = "*", },
  { "ellisonleao/gruvbox.nvim" }
}

local opts = {}
require("lazy").setup(plugins, opts)
