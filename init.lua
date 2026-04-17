vim.g.mapleader = " "

vim.g.maplocalleader = " "

local eager_modules = { 
  -- mason and slp config
  {	src = "https://github.com/mason-org/mason.nvim", },
  {	src = "https://github.com/mason-org/mason-lspconfig.nvim", },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  -- nvim-treesitter
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
  --	blink.cmp
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1.0") },
  { src = "https://github.com/alexandre-abrioux/blink-cmp-npm.nvim" },
  { src = "https://github.com/disrupted/blink-cmp-conventional-commits" },
  { src = "https://github.com/moyiz/blink-emoji.nvim" },
}

local lazy_modules = {
  -- colorscheme
  {	src = "https://github.com/folke/tokyonight.nvim", },
  {	src = "https://github.com/oskarnurm/koda.nvim", },
  {	src = "https://github.com/shaunsingh/nord.nvim", },
  { src = "https://github.com/datsfilipe/vesper.nvim" },
  -- nvim-tree
  {	src = "https://github.com/nvim-tree/nvim-tree.lua", },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
}

vim.pack.add(eager_modules, { load = true })
vim.pack.add(lazy_modules, { load = false })

-- Configs
require("config.options")
require("config.keymap")

-- On load
vim.api.nvim_create_autocmd("VimEnter", { callback = function()
	vim.cmd.colorscheme("vesper")
end })

-- Install Plugins
--
--    { src = "https://github.com/folke/which-key.nvim" },
