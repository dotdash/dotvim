"let loaded_matchparen = 1

set encoding=utf-8

set nocompatible
filetype off

let mapleader = "\\"

call plug#begin()

Plug 'vim-scripts/Align'

Plug 'vim-scripts/cscope_macros.vim'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

Plug 'mustache/vim-mustache-handlebars'

Plug 'skywind3000/asyncrun.vim'

Plug 'rust-lang/rust.vim'

Plug 'vim-scripts/sudo.vim'

Plug 'beyondwords/vim-twig'

Plug 'vim-scripts/VOoM'

Plug 'rking/ag.vim'

Plug 'peterhoeg/vim-qml'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-scripts/yaifa.vim'

"Plug 'guyzmo/notmuch-abook'

Plug 'jason0x43/vim-js-indent'
Plug 'leafgarland/typescript-vim'

Plug 'tikhomirov/vim-glsl'

Plug 'cespare/vim-toml'

Plug 'lotabout/skim'
Plug 'lotabout/skim.vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc.vim'
Plug 'matsui54/ddc-matcher_fuzzy'
Plug 'shun/ddc-vim-lsp'
Plug 'LumaKernel/ddc-tabnine'

Plug 'morhetz/gruvbox'
call plug#end()

set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

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

set ttymouse=sgr

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

if &term =~ 'alacritty'
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors

if &term =~ '^tmux'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set suffixes+=.lock

set autoread
