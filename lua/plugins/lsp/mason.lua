return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
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
        },
        -- atuo install with lspconfig
        automatic_installation = true
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                }
            }
        },
        "neovim/nvim-lspconfig",
    },
}
