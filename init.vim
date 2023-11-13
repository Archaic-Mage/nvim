"General editor settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nocompatible
set ruler
set showcmd
set incsearch
set shellslash
set number
set relativenumber
set cino+=L0
set clipboard+=unnamedplus
set swapfile!
set nobackup
set hlsearch!
set incsearch
syntax on
filetype indent on
filetype off
setlocal indentkeys-=:
setlocal scrolloff=10

set background=dark " or light if you want light mode
colorscheme gruvbox

"keybindings for { completion, ctrl-a to select all
set belloff=all

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r /home/mage/Documents/CP/codeforces/template/template.cpp

"plugins
lua require('plugins')
lua require('core.remaps')
lua require('core.plugins.cphelper')
lua require('core.plugins.telescope')
lua require('core.plugins.treesitter')
lua require('core.plugins.lsp')
