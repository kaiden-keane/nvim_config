return {
    -- simple plugins that dont need much
    {
        "catppuccin/nvim", 
        config = function ()
            catppuccin = require("catppuccin")
            catppuccin.setup()
            catppuccin.setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                light = "latte",
                dark = "mocha",
                }    
            })
            vim.cmd.colorscheme "catppuccin"
        end,
        endname = "catppuccin", priority = 1000 }
    -- { "folke/tokyonight.nvim", config = function() vim.cmd.colorscheme "tokyonight" end }
}
