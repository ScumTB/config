set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set clipboard+=unnamedplus

noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

let mapleader=" "
syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap <LEADER><CR> :nohlsearch<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

map s <nop>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l


map rr :QuickRun<CR>

map<LEADER>l <C-w>l
map<LEADER>i <C-w>k
map<LEADER>j <C-w>h
map<LEADER>k <C-w>j
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'thinca/vim-quickrun'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
let g:SnazzyTransparent = 1
let g:coc_global_extensions = ['coc-clangd']
" ==================== vim-instant-markdown ====================
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1
color snazzy

