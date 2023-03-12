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

local status, lazy = pcall(require, 'lazy')
if (not status) then return end

lazy.setup({
  -- Lsp
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  'onsails/lspkind-nvim',            -- vscode-like pictograms
  'neovim/nvim-lspconfig',           -- LSP
  'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'glepnir/lspsaga.nvim', -- LSP UIs

  -- Cmp
  'L3MON4D3/LuaSnip',
  'hrsh7th/cmp-buffer',   -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp',     -- Completion

  -- Utilities
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  'norcalli/nvim-colorizer.lua',
  -- UI
  'tjdevries/colorbuddy.nvim',
})
