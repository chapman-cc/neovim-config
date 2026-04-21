vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Setup Todo-comments config",
  group = vim.api.nvim_create_augroup("Setup Todoo-comments", { clear = true }),
  callback = function()
    local tc = require("todo-comments")
    tc.setup()

    vim.keymap.set("n", "tj", function() tc.jump_next() end, { desc = "Next Todo Comment" })
    vim.keymap.set("n", "tk", function() tc.jump_prev() end, { desc = "Previous Todo Comment" })
  end
})
