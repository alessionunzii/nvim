vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false

vim.keymap.set('n', '<C-n>', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>r", ":!javac % && cd %:h && java %:t:r<CR>")
vim.keymap.set('n', '<C-a>', ':%y +<CR>', {desc = 'Copia contenuto dell intero file'})
