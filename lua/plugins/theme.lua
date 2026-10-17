return {
  -- 1. Your Custom Theme
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end,
  },

  -- 2. Statusline plugin (required to get colored blocks, mode indicators, etc.)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'onedark', -- Automatically matches your colorscheme!
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
      }
    end,
  },

  {
    "nvim-lua/plenary.nvim",
    lazy = true
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
}
