set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set dir=/tmp
syntax off
filetype plugin off
set autoindent
set smartindent
set nocindent
set clipboard=unnamed
set hidden

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

"autocmd FileType php setlocal noeol binary fileformat=dos

highlight Search ctermfg=Grey ctermbg=NONE ctermbgterm=NONE
highlight NonText ctermfg=16
highlight SpecialKey ctermfg=16
highlight Pmenu ctermfg=Gray ctermbg=DarkGray
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
set noeb vb t_vb=

"colorscheme FreshCut

execute Spaces()
