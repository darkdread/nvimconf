call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'APZelos/blamer.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

lua require('init')
lua require('theme')
colorscheme tokyonight

set number
set relativenumber

if !empty(glob($USERPROFILE . "/AppData/Local/Programs/Git/bin/bash.exe"))
    "echo "Using shell: " . $USERPROFILE . "/AppData/Local/Programs/Git/bin/bash.exe"
    set shell=$USERPROFILE/AppData/Local/Programs/Git/bin/bash.exe
    let &shellcmdflag = '-c'
    set shellxquote=(
    set shellslash
endif
