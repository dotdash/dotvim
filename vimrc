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

Plug 'editorconfig/editorconfig-vim'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc.vim'
Plug 'Shougo/ddc-ui-native'
Plug 'tani/ddc-fuzzy'
Plug 'shun/ddc-vim-lsp'
Plug 'LumaKernel/ddc-tabnine'

Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on
syntax on

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
  set termguicolors
endif

if &term =~ 'kitty'
  " Mouse support
  set mouse=a
  set ttymouse=sgr
  set balloonevalterm
  " Styled and colored underline support
  let &t_AU = "\e[58:5:%dm"
  let &t_8u = "\e[58:2:%lu:%lu:%lum"
  let &t_Us = "\e[4:2m"
  let &t_Cs = "\e[4:3m"
  let &t_ds = "\e[4:4m"
  let &t_Ds = "\e[4:5m"
  let &t_Ce = "\e[4:0m"
  " Strikethrough
  let &t_Ts = "\e[9m"
  let &t_Te = "\e[29m"
  " Truecolor support
  let &t_8f = "\e[38:2:%lu:%lu:%lum"
  let &t_8b = "\e[48:2:%lu:%lu:%lum"
  let &t_RF = "\e]10;?\e\\"
  let &t_RB = "\e]11;?\e\\"
  " Bracketed paste
  let &t_BE = "\e[?2004h"
  let &t_BD = "\e[?2004l"
  let &t_PS = "\e[200~"
  let &t_PE = "\e[201~"
  " Cursor control
  let &t_RC = "\e[?12$p"
  let &t_SH = "\e[%d q"
  let &t_RS = "\eP$q q\e\\"
  let &t_SI = "\e[5 q"
  let &t_SR = "\e[3 q"
  let &t_EI = "\e[1 q"
  let &t_VS = "\e[?12l"
  " Focus tracking
  let &t_fe = "\e[?1004h"
  let &t_fd = "\e[?1004l"
  execute "set <FocusGained>=\<Esc>[I"
  execute "set <FocusLost>=\<Esc>[O"
  " Window title
  let &t_ST = "\e[22;2t"
  let &t_RT = "\e[23;2t"

  " vim hardcodes background color erase even if the terminfo file does
  " not contain bce. This causes incorrect background rendering when
  " using a color theme with a background color in terminals such as
  " kitty that do not support background color erase.
  let &t_ut=''
  set termguicolors
endif

if &term =~ 'wezterm'
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  let &t_8u="\<Esc>[58;2;%lu;%lu;%lum"
  let &t_Au="\<Esc>[58;5;%dm"
  set termguicolors
endif

if &term =~ '^tmux'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

for cfg in split(globpath("$HOME/.vim/bundle-cfg", "*.vim"))
	exec "source" cfg
endfor

if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set suffixes+=.lock

set nofoldenable
set autoread
