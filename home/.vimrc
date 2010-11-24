set nocompatible     " prevents vim from emulating the original vi's bugs and limitations
syntax on            " enable syntax hightlighting
set background=dark  " syntax hightlighting colors for dark background
set autoindent       " use the current line's indent level to set the indent level of new lines
set smartindent      " intelligently guess the indent level of any new line based on the previous line
set tabstop=4        " 4-space tabs
set shiftwidth=4     " use 4 spaces when text is indented
let mapleader = ","  " redefinde mapleader
set showcmd          " Show (partial) command in status line
set showmatch        " Show matching brackets.
set ignorecase       " Do case insensitive matching
set smartcase        " Do smart case matching
set incsearch        " Incremental search
"set mouse=a          " Enable mouse usage (all modes) in terminals
set hidden           " Hide buffers when they are abandoned
set autowrite        " Automatically save before commands like :next and :make
set ruler            " statusline that displays the current cursor position

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal g'\"" | endif
endif

" load indentation rules according to the detected filetype
if has("autocmd")
  filetype indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

