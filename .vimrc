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
colorscheme hybrid_material
set guifont=Monaco:h16
let g:ctrlp_max_files = 0
let g:enable_bold_font = 1
let g:perforce_open_on_change = 1
let g:perforce_open_on_save = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.bundle/*,*/log/*,*/coverage/*,*/test-integration/*,*/node_modules/*,*/bower_components/*
set cursorline
filetype off

autocmd BufEnter * lcd %:p:h
autocmd BufNewFile,BufRead *.hdbs set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
autocmd BufWritePre * StripWhitespace

call plug#begin('~/.vim/plugged')
Plug 'mustache/vim-mustache-handlebars'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
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
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Install silver searcher from https://github.com/ggreer/the_silver_searcher
" before using ag.vim
Plug 'rking/ag.vim'
call plug#end()
