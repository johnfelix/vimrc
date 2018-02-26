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
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize=50
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter NerdTreeMirror

set expandtab
set shiftwidth=2 softtabstop=2
set incsearch ignorecase hlsearch
set backspace=2
set number
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set visualbell t_vb=
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid

set guifont=Monaco:h18
set textwidth=120

let g:enable_bold_font = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.bundle/*,*/log/*,*/coverage/*,*/test-integration/*,*/node_modules/*,*/bower_components/*,*/.git/*
set wildignore+=*/npm-packages-offline-cache/*,*/vendor/cache/*
let mapleader = ","
set cursorline
filetype on
let g:NERDTreeHijackNetrw=0
ca tn tabnew
let $lotus = "/Users/jisaac/Code/zendesk/zendesk_console/"
let $classic = "/Users/jisaac/Code/zendesk/zendesk/"
let $editor = "/Users/jisaac/Code/zendesk/zendesk_editor/"
"Ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_linters = { 'javascript': ['eslint'] }
"let g:ale_open_list = 1
let g:ale_change_sign_column_color = 1
let g:ale_sign_column_always = 1

let $FZF_DEFAULT_COMMAND= 'ag -g ""'

"autocmd BufEnter * lcd %:p:h
autocmd BufNewFile,BufRead *.hdbs set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufEnter * EnableStripWhitespaceOnSave
autocmd BufWritePost * call system("!ctags -R --exclude=.git --exclude=tmp --exclude=node_modules --exclude=spec --exclude=log --exclude=docs --exclude=.eyeglass_cache --exclude=bundle --exclude=test --exclude=npm-packages-offline-cache --exclude=lotus_react/node_modules --exclude=vendor --exclude=dist")
autocmd FileType javascript JsPreTmpl html

if version >= 700
  map <C-t> <Esc>:tabnew<CR>
  map <C-p> <Esc>:FZF<CR>
  map <C-n> :NERDTreeToggle<CR>
endif


"Install Vim-Plug from https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'mustache/vim-mustache-handlebars'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-ruby/vim-ruby'
Plug 'bling/vim-airline'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'w0ng/vim-hybrid'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Quramy/vim-js-pretty-template'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
" Plug 'ludovicchabant/vim-gutentags'

call plug#end()


let g:airline_theme='angr'
let g:airline_solarized_bg = 'dark'
