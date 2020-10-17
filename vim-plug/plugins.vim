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
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'plasticboy/vim-markdown'
    Plug 'altercation/vim-colors-solarized'
    Plug 'ChaiScript/vim-chaiscript'
    Plug 'ChaiScript/vim-cpp'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'arecarn/crunch.vim'
    Plug 'pboettch/vim-cmake-syntax'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'sjl/gundo.vim'
    Plug 'APZelos/blamer.nvim'
    Plug 'spolu/dwm.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'sbdchd/neoformat'

    " Improve annoying search highlighting
    Plug 'haya14busa/incsearch.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree' 
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
    Plug 'voldikss/vim-floaterm'
    " Fuzzy file search with Ctrl-p
    Plug 'kien/ctrlp.vim'
    " Make keybindings easier to find
    Plug 'liuchengxu/vim-which-key'


  call plug#end()
