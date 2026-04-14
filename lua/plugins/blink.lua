require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	signature = { enabled = true },

	keymap = {
		preset = "default",
		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<CR>"] = { "accept", "fallback" },
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
	},

	cmdline = {
		keymap = {
			preset = "inherit",
			["<CR>"] = { "select_and_accept", "fallback" },
		},
		completion = { menu = { auto_show = true } },
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		providers = {
			npm = {
				name = "npm",
				module = "blink-cmp-npm",
				async = true,
				-- optional - make blink-cmp-npm completions top priority (see `:h blink.cmp`)
				score_offset = 100,
				-- optional - blink-cmp-npm config
				---@module "blink-cmp-npm"
				---@type blink-cmp-npm.Options
				opts = {
					ignore = {},
					only_semantic_versions = true,
					only_latest_version = false,
				},
			},
			conventional_commits = {
				name = "Conventional Commits",
				module = "blink-cmp-conventional-commits",
				enabled = function()
					return vim.bo.filetype == "gitcommit"
				end,
				---@module 'blink-cmp-conventional-commits'
				---@type blink-cmp-conventional-commits.Options
				opts = {
					-- See Configuration section below for available options
				},
			},

			emoji = {
				module = "blink-emoji",
				name = "Emoji",
				score_offset = 15, -- Tune by preference
				opts = {
					insert = true, -- Insert emoji (default) or complete its name
					---@type string|table|fun():table
					trigger = function()
						return { ":" }
					end,
				},
				should_show_items = function()
					return vim.tbl_contains(
						-- Enable emoji completion only for git commits and markdown.
						-- By default, enabled for all file-types.
						{ "gitcommit", "markdown" },
						vim.o.filetype
					)
				end,
			},
		},
	},
})
