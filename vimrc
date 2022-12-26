if has("syntax")
  syntax on
endif
filetype plugin indent on
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autoread
set tabstop=4
set expandtab
set shiftwidth=4     
set softtabstop=4     
set autoindent
set smartindent
set number
set ruler
set wrap
set encoding=utf-8
set laststatus=2
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" this part is for vundle plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on
