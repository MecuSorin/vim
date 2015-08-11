if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif
let $VIMSTARTUP = $VIMHOME."/startup"

" Persistent undo
set undodir=$VIMHOME."/undoHistory"
set undofile
set undolevels=1000

set nocompatible
set modelines=0
set hlsearch
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
set gfn=Consolas:h14:cEASTEUROPE

" Sets the numbers settings to change between modes
set relativenumber
set rnu
    au InsertEnter * :set nu
    au InsertLeave * :set rnu
    au FocusLost * :set nu
    au FocusGained * :set rnu

syntax on
syntax enable
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

"Save on focus lost
au FocusLost * :wa

"Clear spaces and transform them into tabs
autocmd FileType c,cpp,typescript,java,cs,javascript,php,ps1,go autocmd BufWritePre <buffer> :%retab!
autocmd FileType c,cpp,typescript,java,cs,javascript,php,ps1,go autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufNewFile,BufFilePre,BufRead *.md,*.txt set filetype=markdown.pandoc

source $VIMSTARTUP/mappings.vim
source $VIMSTARTUP/pluginmanager.vim
source $VIMSTARTUP/pluginconfigurations.vim
"source $VIMSTARTUP/stationCustom.vim




