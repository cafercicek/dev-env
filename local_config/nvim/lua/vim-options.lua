--vim.cmd("set expandtab")
--vim.cmd("set tabstop=2")
--vim.cmd("set softtabstop=2")
--vim.cmd("set shiftwidth=2")
vim.cmd("inoremap jj <esc>")
--vim.cmd("tnoremap <Esc> <C-\><C-n>")
vim.cmd("set clipboard=unnamedplus")
--vim.cmd("set mouse=a")
vim.cmd("set number")
vim.g.mapleader = " "
--vim.cmd("tnoremap <Esc> <C-\\><C-n>")

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert"
})
vim.keymap.set('n', '<leader>tt', ':belowright 10split | terminal<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-d>', [[<C-\><C-n>:q<CR>]], { noremap = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

vim.keymap.set('n', '<C-d>', ':q<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>+', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>-', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><', ':vertical resize -5<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true })
