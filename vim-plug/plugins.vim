" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Which ones from this list do I really need?
    Plug 'airblade/vim-gitgutter'
    " Main color theme
    Plug 'morhetz/gruvbox'
    " Use git commands inside vim
    Plug 'tpope/vim-fugitive'
    " Status/tabline
    Plug 'vim-airline/vim-airline'
    " Syntax highlighting etc for markdown
    Plug 'plasticboy/vim-markdown'
    " Optimized color scheme easier for the eyes
    Plug 'altercation/vim-colors-solarized'
    " Multicolor parentheses
    Plug 'kien/rainbow_parentheses.vim'
    " Calculator for Vim (do I need it?)
    Plug 'arecarn/crunch.vim'
    " Syntax highlighting etc for Cmake
    Plug 'pboettch/vim-cmake-syntax'
    " Visualize vim undo tree
    Plug 'sjl/gundo.vim'
    " Auto git blame visible on current line
    Plug 'APZelos/blamer.nvim'
    " Tiled window management for vim
    Plug 'spolu/dwm.vim'
    " Multiple cursors (like in VSCode)
    Plug 'terryma/vim-multiple-cursors'
    " Improve annoying search highlighting
    Plug 'haya14busa/incsearch.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree' 
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Floating terminal
    Plug 'voldikss/vim-floaterm'
    " Fuzzy file search with Ctrl-p
    Plug 'kien/ctrlp.vim'
    " Make keybindings easier to find
    Plug 'liuchengxu/vim-which-key'
    " Edit vertically multiple lines
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()
