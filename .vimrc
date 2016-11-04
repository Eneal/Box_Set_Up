set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Let Vundle manage bundle"
Plugin 'VundleVim/Vundle.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'klen/python-mode'
call vundle#end()
syntax enable
set autoindent
set expandtab
set showcmd
set shiftwidth=4
set tabstop=4
set modelines=1
set cindent
filetype plugin indent on
set number
set splitright
set hidden
