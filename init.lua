vim.g.mapleader = " "

vim.g.maplocalleader = " "

require "config.options"
require "config.keymap"

-- Plugins
vim.pack.add{
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1.0") },
}


require "plugins.colorscheme"
require "plugins.mason"
require "plugins.lspconfig"
require "plugins.blink"
