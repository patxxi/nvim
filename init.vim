source ~/.config/nvim/config-nvim/plugins.vim
source ~/.config/nvim/config-nvim/map.vim
source ~/.config/nvim/config-nvim/plugins-config.vim
set number
set relativenumber
set mouse=a
set numberwidth=1
set clipboard+=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set cursorline
set nocompatible

let s:clip='/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system/(s:clip, @0) | endif
  augroup END
endif

