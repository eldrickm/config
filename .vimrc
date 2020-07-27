" ========================================================================================
" The Mothership .vimrc
" Author: Jhoneldrick Millares
" Created 09/28/16 in Room 304, Phi Kappa Psi
" Updated 2020-07-25 in Room 2029, Sheraton Palo Alto: Quarantine Edition
" ========================================================================================


" = Vundle Plugins =======================================================================
"
" ----------------------------------------------------------------------------------------
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"see :h vundle for more details or wiki for FAQ
" ----------------------------------------------------------------------------------------

set nocompatible                          " be iMproved, required
filetype off                              " required
set rtp+=~/.vim/bundle/Vundle.vim         " set the runtime path to include Vundle
call vundle#begin()                       " activate plugins

" Vundle (Required)
Plugin 'VundleVim/Vundle.vim'

" Utility Plugins
Plugin 'scrooloose/nerdtree'              " file tree
Plugin 'preservim/nerdcommenter'          " easy commenting
Plugin 'ctrlpvim/ctrlp.vim'               " file finding
Plugin 'mhinz/vim-signify'                " git diff sign tags
Plugin 'dense-analysis/ale'               " linter
Plugin 'valloric/youcompleteme'           " auto complete
Plugin 'Chiel92/vim-autoformat'           " auto formatter
Plugin 'jremmen/vim-ripgrep'              " ripgrep integration

" Interface Plugins
Plugin 'vim-airline/vim-airline'          " nicer status line
Plugin 'vim-airline/vim-airline-themes'   " themes for the status line
Plugin 'morhetz/gruvbox'                  " undefeated color scheme
Plugin 'nathanaelkane/vim-indent-guides'  " visual display of indent levels

" Language Plugins
Plugin 'vhda/verilog_systemverilog.vim'   " verilog and system verilog highlighting

call vundle#end()                         " plugins must be added before this line

" ========================================================================================


" = Editor Settings ======================================================================

syntax on                   " syntax highlighting
filetype plugin indent on   " indent specificity

" Misc Settings
set mouse=a                 " mouse support
set noerrorbells            " remove annoying error bell sound
set noswapfile              " no .swp files because they are annoying
set nobackup
set undodir=~/.vim/undodir  " use undofiles instead
set undofile
set laststatus=2            " always display status line

" Tab Settings
set expandtab			    " tabs become spaces
set tabstop=4			    " number of visual spaces per tab
set softtabstop=4		    " number of spaces in tab when editing
set shiftwidth=4
set autoindent

" Line Number Settings
set number                  " absolute line numbers

" Graphical Settings
colorscheme gruvbox
set background=dark
set t_Co=256                " terminal colors for guake

" Search Settings
set incsearch               " search as characters are entered
set hlsearch                " search highlighting
set showmatch               " show matching parenthesis like character
set smartcase               " case sensitive when uppercase character included

" Fold Settings
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Line Settings
set nowrap
set linebreak

" OSX stupid backspace fix
set backspace=indent,eol,start

" runtime settings
runtime macros/matchit.vim

" ========================================================================================


" = Remaps ===============================================================================

" map spacebar as leader key
let mapleader = " "

" move visually by line, made a bit redundant with `set nowrap`
nnoremap j gj
nnoremap k gk

" jk remapped to ESC for fast exit
inoremap jk <ESC>

" turn off highlights in search
nnoremap <leader><space> :nohlsearch<CR>

" remove trailing backspaces
nnoremap <leader><backspace> :RemoveTrailingSpaces<CR>

" toggle folds
nnoremap <Bslash> za

" open NERDTree
map <C-n> :NERDTreeToggle<CR>

" window movement between panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" YCM
nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<CR>

" ripgrep project search
nnoremap <leader>ps :Rg<SPACE>

" autoformat current verilog file - requires verilog-format to be installed
nnoremap <leader>fv :!verilog-format -f '%:p'<CR>

" ========================================================================================

" = Plugin Settings ======================================================================

" gruvbox
let g:gruvbox_invert_selection = '0'

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Vim-Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" ALE
let g:ale_verilog_xvlog_executable = '/home/redleader/Xilinx/Vivado/2019.2/bin/xvlog'

" CTRL+P
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" ========================================================================================
