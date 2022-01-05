""""""
" GENERAL
""""""
set history=500
filetype plugin on
filetype indent on
set autoread
au FocusGained,BufEnter * checktime

set number

set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("wind16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
set ruler
set cmdheight=1
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set foldcolumn=1

syntax enable
set encoding=utf8

""""""
" Files, backups and undo
""""""

set nobackup
set nowb
set noswapfile

""""""
" Text, tab, indents
"""""

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "Wrap lines

""""""
" Status line
"""""

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

""""""
" Spell check
"""""

""""""
" Helper functions
"""""
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction
