" nvim vs vim compatibility
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Highlight current line
set cursorline

set splitright

" import plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Files to ignore
let g:NERDTreeRespectWildIgnore = 1
set wildignore+=*/tmp/*,*.so,*swp,*.zip,*.o,*.d,*.git/*,*__pycache__/*,*.pyc,*.patch,*.csv,*site-packages/*

let g:blamer_enabled = 1
let g:doxygen_enhanced_color=1
let g:load_doxygen_syntax=1

let g:ycm_confirm_extra_conf = 0

let g:airline_powerline_fonts=1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

set background=dark
let g:gruvbox_contrast_light="hard"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark="hard"

colorscheme gruvbox

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


" plugin configs
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/airline.vim

" Nerdtree
"
let NERDTreeShowHidden=1

" Ctrl p
let g:ctrlp_working_path_mode = '' "ignore all files except ones existing in current working dir

" Key shortcuts
"
nnoremap <leader>t :FloatermNew! --wintype=floating --position=bottomleft --height=25 --width=150 if [[ -n $(find . -name "activate")  ]]; then source $(find . -name "activate");fi<CR>
nnoremap <leader>r :FloatermNew! --wintype=floating --position=topright --width=0.5 --height=0.95 if [[ -n $(find . -name "activate")  ]]; then source $(find . -name "activate");fi<CR>
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>
" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" Less annoying search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" nerdtree
nmap <leader>< :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
" which-key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
