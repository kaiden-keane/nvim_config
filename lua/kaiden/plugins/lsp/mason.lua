return {
    "williamboman/mason.nvim",
    dependencies = {
    "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "html", -- html
                "cssls", -- css
                "lua_ls", -- lua
                "pyright", -- python
                "bashls", -- bash
                "clangd", -- C ^ C++
                "dockerls", -- docker
                "ltex", -- latex
                "ols", -- odin
                "cmake" -- CMAKE
            },
            automatic_installation = true
        })

    end
}
