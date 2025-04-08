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

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert"
})
vim.keymap.set('n', '<leader>tt', ':belowright 10split | terminal<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-d>', [[<C-\><C-n>:q<CR>]], { noremap = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
