return {
  'neovim/nvim-lspconfig',
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lsp_keymaps = function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
      vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer = 0})
      vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer = 0})
      vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer = 0})
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = 0})
    end
    require'lspconfig'.clangd.setup{
      capabilities = capabilities,
      on_attach = lsp_keymaps,
    }
    require'lspconfig'.gopls.setup{
      capabilities = capabilities,
      on_attach = lsp_keymaps,
    }
    require'lspconfig'.pyright.setup{
      capabilities = capabilities,
      on_attach = lsp_keymaps,
    }
  end,
}
