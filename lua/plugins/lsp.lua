return {
  'neovim/nvim-lspconfig',
  config = function()
    require'lspconfig'.clangd.setup{}
    require'lspconfig'.gopls.setup{}
    require'lspconfig'.pyright.setup{}
  end,
}
