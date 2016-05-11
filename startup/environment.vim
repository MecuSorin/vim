set backupdir=~/.vim/.backup//,~/vimfiles/.backup//
set directory=~/.vim/.swp//,~/vimfiles/.swp//
set undodir=~/.vim/.undo//,~/vimfiles/.undo//
" Persistent undo
set undofile
set undolevels=1000

set nocompatible
set modelines=0
set hlsearch
set relativenumber
set smartcase
set ignorecase

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

syntax on

syntax enable
set background=dark
colorscheme solarized

set gfn=Consolas:h14:cEASTEUROPE
set laststatus=2

filetype plugin indent on
filetype plugin on
filetype on
set filetype=markdown.pandoc


" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
set noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:>-,eol:¬

