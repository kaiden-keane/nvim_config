-- highlighting and such

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            ensure_installed = {"c",
                                "lua",
                                "vim",
                                "vimdoc",
                                "query",
                                "markdown",
                                "markdown_inline",
                                "javascript",
                                "typescript",
                                "cpp",
                                "python",
                                "sql",
                                "java"},

            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            -- enable indentation
            indent = { enable = true },
        })
    end,
}

