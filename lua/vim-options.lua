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

-- Move between splits with Ctrl+h/j/k/l (normal and terminal mode)
vim.keymap.set({ 'n', 't' }, '<C-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set({ 'n', 't' }, '<C-j>', '<C-w>j', { desc = 'Move to lower split' })
vim.keymap.set({ 'n', 't' }, '<C-k>', '<C-w>k', { desc = 'Move to upper split' })
vim.keymap.set({ 'n', 't' }, '<C-l>', '<C-w>l', { desc = 'Move to right split' })
