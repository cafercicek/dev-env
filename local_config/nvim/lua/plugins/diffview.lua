return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("diffview").setup()
    vim.keymap.set('n', '<leader>gd', ':DiffviewOpen<CR>', {})          -- Open diff view
    vim.keymap.set('n', '<leader>gh', ':DiffviewFileHistory<CR>', {})   -- File history
  end
}
