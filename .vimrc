set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
syntax off
filetype plugin off
set autoindent
"set smartindent
"set cindent
set clipboard=unnamed
set hidden

"tabs
function! Tabs()
  set softtabstop=8
  set shiftwidth=8
  set tabstop=8
  set noexpandtab
endfunction

function! Spaces()
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

execute Spaces()
