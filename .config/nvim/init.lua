local g = vim.g
local opt = vim.opt

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.encoding = 'utf-8'
opt.number = true
opt.mouse = null
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.swapfile = false
opt.termguicolors = true


local treesitter_opts = {}
treesitter_opts["do"] = "TSUpdate"

local Plug = vim.fn['plug#']

vim.call('plug#begin')
	Plug("dracula/vim", { as = 'dracula' })
	Plug('rose-pine/neovim', {as = 'rose-pine'})
	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('jiangmiao/auto-pairs')
        Plug('nvim-tree/nvim-tree.lua')
        Plug('Pocco81/auto-save.nvim')
        Plug('nvim-treesitter/nvim-treesitter', treesitter_opts)
vim.call('plug#end')

