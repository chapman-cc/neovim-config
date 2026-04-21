-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function toggle_file_explorer()
	local has_tree, _ = pcall("require", "nvim-tree")
	if not has_tree then
		vim.cmd.packadd "nvim-tree"
		vim.cmd.packadd "nvim-web-devicons"

		require("nvim-tree").setup {
			sort = { sorter = "case_sensitive" },
			view = { width = 30 },
			renderer = { group_empty = true },
			filters = {
				dotfiles = false,
				custom = { "^.gits$" },
			},
		}
	end

	require("nvim-tree.api").tree.toggle()
end

vim.keymap.set("n", "<leader>e", toggle_file_explorer, {
	desc = "Toggle File Explorer",
})
