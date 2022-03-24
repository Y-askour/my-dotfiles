call plug#begin()
  Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'cohama/lexima.vim'
  Plug 'morhetz/gruvbox' 
  Plug 'itchyny/lightline.vim'
  Plug 'tribela/vim-transparent'
  Plug 'christoomey/vim-system-copy'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'maralla/completor.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'dense-analysis/ale'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-surround'
  Plug 'tommcdo/vim-lion'
  Plug 'sheerun/vim-polyglot'
  Plug 'lewis6991/spellsitter.nvim'
  Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'akinsho/toggleterm.nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'Xuyuanp/scrollbar.nvim'
call plug#end()
