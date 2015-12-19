set nocompatible
set encoding=utf-8
syntax enable
filetype plugin on
filetype plugin indent on
set tabstop=2
set synmaxcol=800
set nowrap
set shiftwidth=2
set splitright
set splitbelow
set modifiable
let g:NERDTreeWinSize=20
set expandtab
set shiftwidth=2 softtabstop=2
set incsearch ignorecase hlsearch 
set backspace=2
set number
set background=dark
colorscheme hybrid
set guifont=Monaco:h16
let g:enable_bold_font = 1
let g:perforce_open_on_change = 1
let g:perforce_open_on_save = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.bundle/*,*/log/*,*/coverage/*,*/test-integration/*
set cursorline
filetype off

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-rails'
Plug 'kien/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'danro/rename.vim'
Plug 'nfvs/vim-perforce'
Plug 'Yggdroot/indentLine'
Plug 'thoughtbot/vim-rspec'
Plug 'bling/vim-airline'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
call plug#end()
