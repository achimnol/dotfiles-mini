vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.g.mapleader = ','

require("telescope").setup()
vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})

require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

local plugin_osc52 = require('osc52')
plugin_osc52.setup(opts)
vim.keymap.set('n', '<leader>c', plugin_osc52.copy_operator, {expr = true})
vim.keymap.set('v', '<leader>c', plugin_osc52.copy_visual)
