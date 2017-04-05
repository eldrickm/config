" The Mothership .vimrc
" Author: Jhoneldrick Millares
" Created 09/28/16 in Room 304, Phi Kappa Psi

syntax on                   " Syntax Highlighting
filetype plugin indent on   " Indent Specificity
set mouse=a                 " Mouse Support

" Tab Settings
set autoindent
set smartindent
set tabstop=4			    " Number of visual spaces per tab
set softtabstop=4		    " Number of spaces in tab when editing
set expandtab			    " Tabs become spaces

" Absolute/Relative Line Number
set relativenumber
set number

" Show matching parenthesis like character
set showmatch

" Set search behavior
set incsearch               " Search as characters are entered
set hlsearch                " Search highlighting

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Key remaps

" jk remapped to ESC for fast exit
inoremap jk <ESC>

" Turn off highlights in search
nnoremap <leader><space> :nohlsearch<CR> 

" Space open/closes folds
nnoremap <space> za

" Move visually by line
nnoremap j gj
nnoremap k gk

