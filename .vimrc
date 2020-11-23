let mapleader="\<Space>"

set noerrorbells

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
" autoread file if it has been changed outside vim
set autoread
" continue line horizontally forever
set nowrap
" line numbering on
set number
set signcolumn=yes
set laststatus=2
set termguicolors

" swaps and backups
set noswapfile
set nobackup
" Let's save undo info!
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
      call mkdir($HOME."/.vim/undo-dir", "", 0700)
    endif
set undodir=~/.vim/undo-dir
set undofile

" spelling
set spell spelllang=en_us
set spellcapcheck=""

" Make tab vs spaces visible
set lcs=trail:·,tab:»·
set list

" Split open at the right or below
set splitbelow
set splitright

colorscheme slate
