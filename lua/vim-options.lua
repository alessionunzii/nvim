vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<C-a>', ':%y +<CR>') --Copia tutto il file
vim.keymap.set('i', '<C-v>', '<C-r>+') --Incolla
