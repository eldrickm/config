" The Mothership .vimrc
" Author: Jhoneldrick Millares
" Created 09/28/16 in Room 304, Phi Kappa Psi

" - Vundle Stuff - "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required

" Utility
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'

" Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'


" OSX stupid backspace fix
set backspace=indent,eol,start

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"see :h vundle for more details or wiki for FAQ
" - End Vundle Stuff - "

syntax on                   " Syntax Highlighting
filetype plugin indent on   " Indent Specificity
set mouse=a                 " Mouse Support

colorscheme gruvbox

" Tab Settings
set autoindent
set smartindent
set cindent
set tabstop=2			    " Number of visual spaces per tab
set softtabstop=2		  " Number of spaces in tab when editing
set shiftwidth=0
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

" Always display the status line
set laststatus=2

" NerdTree
map <C-n> :NERDTreeToggle<CR>

"Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='bubblegum'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_c_remove_include_errors = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
