local servers = {
    -- LUA
    "lua_ls",
    -- Vim
    "vimls",
    -- Html
    "html",
    "emmet_language_server",
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
    ensure_installed = servers
})

for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end

