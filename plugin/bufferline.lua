vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("Bufferline", { clear = false }),
	callback = function(ev) require("bufferline").setup() end,
})
