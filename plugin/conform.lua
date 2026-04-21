vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("conform", { clear = true }),
	callback = function()
		vim.cmd.packadd("conform")
		require("conform").setup({
			default_format_opts = {
				timeout_ms = 500,
				lsp_format = "fallback",
				quiet = false,
				stop_after_first = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				json = { "biome", "prettierd", "prettier" },
				markdown = { "prettierd", "prettier" },
				javascript = { "biome", "prettierd", "prettier" },
				typescript = { "biome", "prettierd", "prettier" },
				javascriptreact = { "biome", "prettierd", "prettier" },
				typescriptreact = { "biome", "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				html = { "prettierd", "prettier" },
			},
			log_level = vim.log.levels.WARN,
			notify_on_error = true,
			notify_no_formatters = true,
		})
		require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
	end,
})
