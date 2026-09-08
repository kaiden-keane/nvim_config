-- LaTeX: compilation, PDF viewer sync, motions, TOC

return {
    "lervag/vimtex",
    lazy = false, -- vimtex handles its own lazy loading; do not use ft/event
    init = function()
        -- treat all .tex files as LaTeX, not plain TeX
        vim.g.tex_flavor = "latex"

        -- build with latexmk (already at /Library/TeX/texbin/latexmk)
        vim.g.vimtex_compiler_method = "latexmk"

        -- Skim, with forward search on compile
        vim.g.vimtex_view_method = "skim"
        vim.g.vimtex_view_skim_sync = 1 -- forward search after compile
        vim.g.vimtex_view_skim_activate = 1 -- focus Skim on view
        vim.g.vimtex_view_skim_reading_bar = 1

        -- don't steal focus with the quickfix window on every warning
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_quickfix_open_on_warning = 0

        -- conceal: hide markup, but show the raw source on the cursor line
        vim.g.vimtex_syntax_conceal = {
            accents = 1,
            ligatures = 1,
            cites = 1,
            fancy = 1,
            greek = 1,
            math_bounds = 1,
            math_delimiters = 1,
            math_fracs = 1,
            math_super_sub = 1,
            math_symbols = 1,
            sections = 0,
            styles = 1,
        }
    end,
}
