let mapleader="\<Space>"

set noerrorbells

" File type detection on
filetype on
" Run ftplugin file associated with given file type
filetype plugin on
" Load indent file of given file type
filetype indent on
" all tabs will APPEAR to be indented with this many spaces
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" pressing tab will insert spaces instead of tab byte
set expandtab
" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" autoread file if it has been changed outside vim
set autoread
" continue line horizontally forever
set nowrap
" line numbering on
set number relativenumber
set nu rnu
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

" Key shortcuts
nnoremap <F9> :tabp<CR>
nnoremap <F10> :tabn<CR>

" Make tab vs spaces visible
set lcs=trail:·,tab:»·
set list

" Split open at the right or below
set splitbelow
set splitright

colorscheme slate
