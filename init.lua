-- TODO:
-- check out how to do diagnostic keymap
vim.g.mapleader = " "

vim.g.maplocalleader = " "

local eager_modules = {
	-- mason and lsp config
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- nvim-treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
	--	blink.cmp
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range "^1.0" },
	{ src = "https://github.com/alexandre-abrioux/blink-cmp-npm.nvim" },
	{ src = "https://github.com/disrupted/blink-cmp-conventional-commits" },
	{ src = "https://github.com/moyiz/blink-emoji.nvim" },
	-- which-key
	{ src = "https://github.com/folke/which-key.nvim" },
}

local lazy_modules = {
	-- colorscheme
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/oskarnurm/koda.nvim" },
	{ src = "https://github.com/shaunsingh/nord.nvim" },
	{ src = "https://github.com/datsfilipe/vesper.nvim" },
	-- lazyvim doc completion
	{ src = "https://github.com/folke/lazydev.nvim" },
	-- nvim-tree
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	-- telescope
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
	-- conform
	{ src = "https://github.com/stevearc/conform.nvim" },
	-- gitsigns
	-- TODO: read gitsigns usage and setup
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	-- todo-comments
	{ src = "https://github.com/folke/todo-comments.nvim" },
	-- mini-plugins
	{ src = "htts://github.com/nvim-mini/mini.nvim" },
}

vim.pack.add(eager_modules, { load = true })
vim.pack.add(lazy_modules, { load = false })

-- Configs
require "config.options"
require "config.keymap"
require "config.autocmd"

-- On load
vim.api.nvim_create_autocmd("VimEnter", {
	desc = "Actions on Loaded",
	callback = function()
		vim.cmd.colorscheme "tokyonight-storm"
		-- Update Mason parser
		vim.cmd "MasonUpdate"
	end,
})
