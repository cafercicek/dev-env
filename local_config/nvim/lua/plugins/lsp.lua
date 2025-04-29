return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")

    -- Ortak on_attach fonksiyonu (kendi keymap'lerini vs. buraya ekleyebilirsin)
    local on_attach = function(client, bufnr)
      local bufmap = function(mode, lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
      end

      bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
      bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
      bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
      bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    end

    -- `clangd` yapılandırması
    lspconfig.clangd.setup({
      on_attach = on_attach,
      cmd = {
          "clangd",
          "--background-index",
          "--compile-commands-dir=build",
          "--query-driver=/usr/bin/arm-none-eabi-*"
        },
      filetypes = { "c", "cpp", "objc", "objcpp" },
      root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    })
  end,
}
