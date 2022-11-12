call plug#begin()
"------------ complete () {} \""
	Plug 'cohama/lexima.vim'

  " transparent
  Plug 'tribela/vim-transparent'

  Plug 'itchyny/lightline.vim'
  Plug 'christoomey/vim-system-copy'
  
  " ------ git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  " ---- completor engine
  Plug 'maralla/completor.vim'

  "------------ snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'sheerun/vim-polyglot'

  "---- compiling the code and checking the errors
  Plug 'dense-analysis/ale'

  " start window
  Plug 'mhinz/vim-startify'

  " icons
  Plug 'kyazdani42/nvim-web-devicons'

  " tabs
  Plug 'romgrk/barbar.nvim'

  " training
  Plug 'ThePrimeagen/vim-be-good'

  " finder
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

  " theme
  Plug 'sainnhe/sonokai'

  "wiki
  Plug 'vimwiki/vimwiki'

call plug#end()
