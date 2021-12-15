" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


let mapleader = " "
set number
set rnu
syntax on

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


nmap <leader>w :w <cr>
nmap <leader>q :q <cr>

nmap <leader>re :!cd ~/Desktop/libft/ && clear && make fclean<cr>

map <leader>/ :Commentary<CR>
map <F2> :NERDTreeToggle<CR>

"  all my plugins
call plug#begin()
  Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'morhetz/gruvbox' 
  Plug 'itchyny/lightline.vim'
  Plug 'tribela/vim-transparent'
  Plug 'dense-analysis/ale'
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'christoomey/vim-system-copy'
  Plug 'tpope/vim-commentary'
  Plug 'vim-scripts/taglist.vim'
  Plug 'vim-scripts/Conque-GDB'
  Plug 'iamcco/mathjax-support-for-mkdp'
  Plug 'powerline/powerline'
  Plug 'nathanaelkane/vim-indent-guides'
call plug#end()


" auto complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

" vim theme
let g:gruvbox_contrast_dark = ''
colorscheme gruvbox
set background=dark

" folding
set foldmethod=syntax
set foldmethod=indent
set foldlevel=99

" smart indent
filetype indent on
set filetype=html 
set smartindent            
" Enable folding with the spacebar
