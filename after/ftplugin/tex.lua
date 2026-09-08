
vim.opt_local.wrap = true
vim.opt_local.linebreak = true -- wrap at word boundaries
vim.opt_local.breakindent = true
vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"
vim.opt_local.conceallevel = 2
vim.opt_local.concealcursor = "" -- reveal raw source on the cursor line

-- move by visual line, since lines now wrap
vim.keymap.set({ "n", "x" }, "j", "gj", { buffer = true })
vim.keymap.set({ "n", "x" }, "k", "gk", { buffer = true })
