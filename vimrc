"let loaded_matchparen = 1

set nocompatible
filetype off

let mapleader = "\\"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Align'

Bundle 'cscope_macros.vim'
Bundle 'majutsushi/tagbar'

Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'

Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vinegar'

Bundle 'scrooloose/syntastic'

Bundle 'rust-lang/rust.vim'

Bundle 'sudo.vim'

Bundle 'xml.vim'
Bundle 'mattn/emmet-vim'

Bundle 'beyondwords/vim-twig'

Bundle 'VOoM'

Bundle 'rking/ag.vim'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/unite.vim'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

Bundle 'yaifa.vim'

Bundle 'leafgarland/typescript-vim'

Bundle 'nanotech/jellybeans.vim'
colorscheme jellybeans

filetype plugin indent on
syntax on

for cfg in split(globpath("$HOME/.vim/bundle-cfg", "*.vim"))
	exec "source" cfg
endfor

set nobackup writebackup backupcopy=yes

set laststatus=2
set splitright splitbelow

set list listchars=tab:>-,trail:-
set nowrap listchars+=precedes:<,extends:>

set sw=2 expandtab

set ruler
set smarttab backspace=indent,eol,start
set mouse=a

set wmnu wim=full

nnoremap  :vert stjump <cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

let g:no_rust_conceal=1
nnoremap <leader>sv :source $MYVIMRC<cr>

set history=1024

set path+=/usr/local/include/
