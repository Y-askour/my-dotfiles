" Start NERDTree when Vim is started without file arguments.
autocmd!

scriptencoding utf-8
set mouse=a
set nocompatible
set number
set rnu
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
set splitbelow splitright
autocmd TermOpen * startinsert
tnoremap <Esc> <C-\><C-n>

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}
"
"
" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


let mapleader = " "
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
map <leader>/ :Commentary<CR>
map <F2> :NERDTreeToggle<CR>
nmap <leader>h :sp<cr>
nmap <leader>v :vs<cr>

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}


" auto complete
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

" vim theme

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use gruvbox
  let g:gruvbox_contrast_dark = ''
  colorscheme gruvbox
endif

"}}}

" folding
set foldmethod=syntax
set foldmethod=indent
set foldlevel=99

" smart indent
filetype indent on
set filetype=html 
set smartindent       


"add costume rules to lexima
call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'latex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'latex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'latex'})

let g:completor_clang_binary = '/usr/bin/clang'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

let g:startify_custom_header = [
      \ '        ___           ___           ___           ___           ___           ___         ', 
      \ '       |\__\         /\  \         /\__\         /\__\         /\  \         /\  \        ',
      \ '       |:|  |       /::\  \       /:/  /        /::|  |       /::\  \       /::\  \       ',
      \ '       |:|  |      /:/\:\  \     /:/  /        /:|:|  |      /:/\:\  \     /:/\ \  \      ',
      \ '       |:|__|__   /:/  \:\  \   /:/  /  ___   /:/|:|  |__   /::\~\:\  \   _\:\~\ \  \     ',
      \ '       /::::\__\ /:/__/ \:\__\ /:/__/  /\__\ /:/ |:| /\__\ /:/\:\ \:\__\ /\ \:\ \ \__\    ',
      \ '      /:/~~/~    \:\  \ /:/  / \:\  \ /:/  / \/__|:|/:/  / \:\~\:\ \/__/ \:\ \:\ \/__/    ',
      \ '     /:/  /       \:\  /:/  /   \:\  /:/  /      |:/:/  /   \:\ \:\__\    \:\ \:\__\      ',
      \ '     \/__/         \:\/:/  /     \:\/:/  /       |::/  /     \:\ \/__/     \:\/:/  /      ',
      \ '                    \::/  /       \::/  /        /:/  /       \:\__\        \::/  /       ', 
      \ '                     \/__/         \/__/         \/__/         \/__/         \/__/        ',  
      \]
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]
let g:startify_bookmarks = [
  \ { 'z': '~/.zshrc' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ { 'x': '~/.config/nvim/plug.vim' },
  \ { 'w': '/tmp/vimwiki' },
  \ ]
let b:lion_squeeze_spaces = 1

augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
