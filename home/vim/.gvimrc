" window title

set title

" font

set guifont=Inconsolata:h16
set antialias

" size

set lines=30
set columns=60

" gui components

set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=e

" text cursor

set guicursor=n-c-v:block-Cursor-blinkon0
set guicursor+=i:ver10-Cursor

" disable mouse

set nomousefocus
set mousehide

" local gvimrc

if filereadable(expand('~/.gvimrc_local'))
  source expand('~/.gvimrc_local')
endif
