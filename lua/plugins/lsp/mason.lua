return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
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
            }
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "html", -- obvi html
                "cssls", -- css
                "pyright", -- python
                "clangd", -- c and c++
                "cmake", -- cmake
                "bashls", -- bash
                "lua_ls", -- lua
                "texlab", -- LaTeX
                "eslint", -- javascript / typescript
                "ts_ls", -- javascript / typescript again
            },
            -- atuo install with lspconfig
            automatic_installation = true
        })
    end
}
