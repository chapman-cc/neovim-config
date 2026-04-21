require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
		quiet = false,
		stop_after_first = true,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		json = { "biome", "prettier" },
		markdown = { "prettier" },
		javascript = { "biome", "prettier" },
		typescript = { "biome", "prettier" },
		javascriptreact = { "biome", "prettier" },
		typescriptreact = { "biome", "prettier" },
		css = { "prettier" },
		html = { "prettier" },
	},
	log_level = vim.log.levels.WARN,
	notify_on_error = true,
	notify_no_formatters = true,
})
