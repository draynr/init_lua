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



local plugins = {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' }},
      {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
      'ThePrimeagen/harpoon',
      'mbbill/undotree',
      'tpope/vim-fugitive',
         'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
   'L3MON4D3/LuaSnip',
   'saadparwaiz1/cmp_luasnip',
   "rafamadriz/friendly-snippets",
   "github/copilot.vim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'alexghergh/nvim-tmux-navigation',





}


local opts = {}
require("lazy").setup(plugins, opts) 
