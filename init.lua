vim.g.mapleader = " "

vim.g.maplocalleader = " "

-- Install Plugins
vim.pack.add({
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1.0") },
	-- additional blink.cmp providers
	{ src = "https://github.com/disrupted/blink-cmp-conventional-commits" },
	{ src = "https://github.com/alexandre-abrioux/blink-cmp-npm.nvim" },
	{ src = "https://github.com/moyiz/blink-emoji.nvim" },
})

-- Configs
require("config.options")
require("config.keymap")

-- Plugins
require("plugins.colorscheme")
require("plugins.mason")
require("plugins.blink")
