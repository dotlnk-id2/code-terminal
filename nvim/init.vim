noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

inoremap jm <Esc>

noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
inoremap <C-s> :w<CR>
inoremap <C-q> :q<CR>

syntax on

set noswapfile
set clipboard=unnamed
set backspace=2
set cursorline
"set cursorcolumn
set textwidth=80
set linebreak
set number
set relativenumber
set showmode
set showcmd
set encoding=utf-8
"set nocompatible
set laststatus=2
set ruler
set undofile
set history=999

set listchars=tab:»■,trail:■
set list

set wildmenu
set wildmode=longest:list,full

set showmatch
set hlsearch
set incsearch

set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set shiftwidth=4
set showtabline=2
set ignorecase
set incsearch

filetype on
filetype indent on
filetype plugin on

call plug#begin('~/.config/nvim/plugged')
    Plug 'scrooloose/nerdtree'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'nsf/gocode'

    Plug 'valloric/youcompleteme'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'junegunn/vim-easy-align'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'majutsushi/tagbar'
    Plug 'tomtom/tcomment_vim'
call plug#end()
