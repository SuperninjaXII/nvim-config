return {
  -- 1. Your Custom Theme (Must load first)
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    lazy = false,
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true
  },
  {
    "nvchad/base46",
    lazy = false,
    config = function()
    end,
  },

  {
    "nvchad/ui",
    lazy = false,
    config = function()
      require "nvchad"
    end,
  },

  -- 4. Required file icons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
}
