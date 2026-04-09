local server_list = {
    -- LUA
    "lua_ls",
    -- Vim
    "vimls",
    -- Html
    "html",
    -- CSS
    "cssls",
    "tailwindcss",
    -- Javascript / Typescript
    "oxlint",
    "vtsls",
    -- Rust
    -- "bacon-ls", "bacon",
    -- Bash
    "bashls",
    -- misc
    "jsonls",
    "yamlls",
    "marksman",
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = server_list
})

for _, server in ipairs(server_list) do
    vim.lsp.enable(server)
end

