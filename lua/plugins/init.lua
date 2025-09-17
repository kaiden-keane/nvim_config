return {
    -- simple plugins that dont need much
    {
      "neanias/everforest-nvim",
      version = false,
      lazy = false,
      priority = 1000, -- make sure to load this before all the other start plugins
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
        require("everforest").setup({
          -- Your config here
        })
        vim.cmd.colorscheme "everforest"
      end,
    }
    -- {
    --     "catppuccin/nvim", 
    --     config = function ()
    --         catppuccin = require("catppuccin")
    --         catppuccin.setup()
    --         catppuccin.setup({
    --             flavour = "auto", -- latte, frappe, macchiato, mocha
    --             background = { -- :h background
    --             light = "macchiato",
    --             dark = "mocha",
    --             }    
    --         })
    --         vim.cmd.colorscheme "catppuccin"
    --     end,
    --     endname = "catppuccin", priority = 1000 }
    -- { "folke/tokyonight.nvim", config = function() vim.cmd.colorscheme "tokyonight" end }
}
