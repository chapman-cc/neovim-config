require "nvim-treesitter".install {
  "lua",
  "vim",
  "vimdoc",
  "query",
  "markdown",
  "markdown_inline",
}

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
    ts.install { "javascript", "typescript" }
  end,
})
