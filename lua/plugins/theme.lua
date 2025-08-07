-- Here is the list of all colorscheme plugins. Select the default
-- in init.lua with the command
--   vim.cmd("colorscheme <name>")

return {
  {
    "ellisonleao/gruvbox.nvim", 
    lazy = false,
    priority = 1000, 
    opts = {},
    config = function()
      require("gruvbox").setup({
        transparent_mode = false,
      })
    end,
  },
  
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000, 
    opts = {},
    config = function()
      require("catppuccin").setup({
        transparent_mode = false,
      })
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        }
      })
    end,
  },
}
