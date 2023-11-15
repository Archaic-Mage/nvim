-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

use (
    "nvim-treesitter/nvim-treesitter", 
    {run=":TSUpdate"}
)

-- colorscheme
use { "ellisonleao/gruvbox.nvim" }
use {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

use {
	'xeluxee/competitest.nvim',
	requires = 'MunifTanjim/nui.nvim',
	config = function() require('competitest').setup() end
}

use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- vim surrond
use { "tpope/vim-surround" }

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- lsp-zero
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

-- copilot
use {
    'github/copilot.vim'
}
end)

