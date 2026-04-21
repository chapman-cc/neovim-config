require("nvim-treesitter").install({
	"bash",
	"comment",
	"css",
	"csv",
	"diff",
	"dockerfile",
	"doxygen",
	"dtd",
	"earthfile",
	"ebnf",
	"editorconfig",
	"git_config",
	"git_rebase",
	"gitattributes",
	"gitcommit",
	"gitignore",
	"groovy",
	"html",
	"html_tags",
	"http",
	"java",
	"javadoc",
	"javascript",
	"jq",
	"jsdoc",
	"json",
	"json5",
	"jsx",
	"lua",
	"luadoc",
	"markdown_inline14",
	"mermaid",
	"nginx",
	"rust",
	"sql",
	"styled",
	"svelte",
	"terraform",
	"tmux",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"vue",
	"xml",
	"yaml",
	"zsh",
})

local ts_group = vim.api.nvim_create_augroup("LazyTreesitter", { clear = false })

vim.api.nvim_create_autocmd("FileType", {
	group = ts_group,
	pattern = { "javascript", "typescript" },
	callback = function(ev)
		local has_loaded, ts = pcall(require, "nvim-treesitter")
		if not has_loaded then
			return print(ts)
		end
		print("Installing js / ts")
		ts.install({ "javascript", "typescript" })
	end,
})
