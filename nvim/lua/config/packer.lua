-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'sainnhe/sonokai'

  use 'itchyny/lightline.vim'

  use 'christoomey/vim-system-copy'

  use 'tpope/vim-fugitive'

  use 'tpope/vim-rhubarb'

  use 'mhinz/vim-startify'

  use 'kyazdani42/nvim-web-devicons'

  use 'romgrk/barbar.nvim'

  use 'cohama/lexima.vim'

  use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
       {'hrsh7th/cmp-buffer'},
       {'hrsh7th/cmp-path'},
       {'saadparwaiz1/cmp_luasnip'},
       {'hrsh7th/cmp-nvim-lsp'},
       {'hrsh7th/cmp-nvim-lua'},

      -- Snippets engine
        {'L3MON4D3/LuaSnip'},

		-- snippets collection
       {'rafamadriz/friendly-snippets'},
    },
		-- dap 
	use {
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
}
  }
  use 'TheZoq2/neovim-auto-autoread'
end)
