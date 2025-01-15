-- command start with ;
vim.keymap.set('n', ';', ':', { noremap = true, silent = true })
vim.keymap.set('v', ';', ':', { noremap = true, silent = true })

-- up/down -> up/down and recenter the view
vim.keymap.set('n', 'j', 'jzz', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'kzz', { noremap = true, silent = true })

-- moving around windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- buffers
vim.keymap.set('n', '<leader>n', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', ':bp<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>q', ':bd<CR>', { noremap = true, silent = true })
