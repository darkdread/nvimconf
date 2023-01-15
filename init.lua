local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('EdenEast/nightfox.nvim')
Plug('neoclide/coc.nvim', { branch = 'release'})
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })
Plug('APZelos/blamer.nvim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('folke/tokyonight.nvim', { branch = 'main' })
Plug('nvim-lualine/lualine.nvim')
Plug('OmniSharp/omnisharp-vim')
Plug('dense-analysis/ale')

vim.g.OmniSharp_translate_cygwin_wsl = 1

vim.call('plug#end')

vim.cmd [[ set background=dark ]]
vim.cmd [[ colorscheme nightfox ]]

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.pastetoggle = '<F2>'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

