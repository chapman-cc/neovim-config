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
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" }
}


require "plugins.colorscheme"
require "plugins.mason"
require "plugins.lspconfig"
