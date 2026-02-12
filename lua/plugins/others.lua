return{
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    "mason-org/mason.nvim",
    opts = {}
},
{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
},-- lazy
    {
        "sontungexpt/witch-line",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false, -- Almost component is lazy load by default. So you can set lazy to false
        opts = {},
    },
{
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
    },
},
{ 'nvim-mini/mini.nvim', version = '*' },
{
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
  },
  {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  dependencies = { "williamboman/mason.nvim" },
  opts = function()
    local conform = require("conform")

    return {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },

      -- Automatically use any formatter that matches the filetype
      formatters_by_ft = setmetatable({}, {
        __index = function(_, ft)
          return conform.list_formatters(ft)
        end,
      }),
    }
  end,
}
}
