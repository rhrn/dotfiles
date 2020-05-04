set fileencoding=utf-8
set termencoding=utf-8
set dir=/tmp
filetype plugin off

"set clipboard=unnamed

function! Spaces()
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

function! Tabs()
  set softtabstop=8
  set shiftwidth=8
  set tabstop=8
  set noexpandtab
endfunction

execute Spaces()

"autocmd FileType php setlocal noeol binary fileformat=dos

highlight Search ctermfg=Grey ctermbg=NONE
highlight NonText ctermfg=16
highlight SpecialKey ctermfg=16
highlight Pmenu ctermfg=Gray ctermbg=DarkGray
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
set noeb vb t_vb=

"colorscheme FreshCut

call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jacoborus/tender.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

 "Theme
"syntax enable
syntax off
colorscheme tender
"colorscheme monokai
"colorscheme dracula

set t_Co=256 

set autoindent
set smartindent
"set cindent
"set indentexpr=
filetype indent off

set path+=**
set wildmenu
set hidden

nnoremap <c-p> :GFiles<cr>

"let g:ale_fixers = { 'javascript': ['eslint'] }
"let g:ale_fix_on_save = 1
"
set suffixesadd=.js,.vue,.scss,.svelte,.ts
