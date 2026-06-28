-- highlighting and such

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")
        -- configure treesitter
        treesitter.setup({
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            -- enable indentation
            indent = { enable = true },

        })
        treesitter.install({
            "c",
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
            "java",
            "odin",
        })
    end,
}

