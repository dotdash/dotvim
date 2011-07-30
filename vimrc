"let loaded_matchparen = 1

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'cscope_macros.vim'

Bundle 'tpope/vim-fugitive'

Bundle 'tpope/vim-surround'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'ujihisa/neco-ghc'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'ewiplayer/vim-scala'

Bundle 'indenthaskell.vim'
Bundle 'syntaxhaskell.vim'

Bundle 'php.vim--Hodge'

Bundle 'Conque-Shell'

Bundle 'xoria256.vim'
colorscheme xoria256

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

set ruler
set smarttab backspace=indent,eol,start
set mouse=a
