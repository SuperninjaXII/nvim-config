
-- Set leader keys FIRST

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Basic settings
vim.opt.number = true          -- Line numbers
vim.opt.relativenumber = true  -- Relative line numbers
vim.opt.mouse = 'a'            -- Enable mouse
vim.opt.ignorecase = true      -- Case insensitive search
vim.opt.smartcase = true       -- Unless capital in search
vim.opt.hlsearch = false       -- Don't highlight searches
vim.opt.wrap = true           -- Don't wrap lines
vim.opt.breakindent = true     -- Preserve indentation in wrapped text
vim.opt.tabstop = 2            -- Tabs are 2 spaces
vim.opt.shiftwidth = 2         -- Indent by 2
vim.opt.expandtab = true       -- Use spaces, not tabs

-- Basic keymaps
local keymap = vim.keymap

keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save' })
keymap.set('n', '<leader>s', '<cmd>write<cr>', { desc = 'Save' })
keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
keymap.set('n', '<leader>q', '<cmd>quit<cr>', { desc = 'Quit' })


require("config.lazy")
vim.cmd.colorscheme("tokyonight")
vim.o.laststatus = 3
vim.opt.termguicolors = true
require("bufferline").setup{}