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
}