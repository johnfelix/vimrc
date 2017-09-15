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
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_switch_buffer = 1
let g:ctrlp_reuse_window = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_by_filename = 0
"let g:ctrlp_user_command = 'find %s -type f'

let g:enable_bold_font = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.bundle/*,*/log/*,*/coverage/*,*/test-integration/*,*/node_modules/*,*/bower_components/*,*/.git/*
set wildignore+=*/npm-packages-offline-cache/*
let mapleader = ","
set cursorline
filetype off
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
"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':['js','ruby'], 'passive_filetypes': ['html'] }
"let g:syntastic_filetype_map = { 'module.js': 'javascript' }
"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'
"let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn



"autocmd BufEnter * lcd %:p:h
autocmd BufNewFile,BufRead *.hdbs set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufEnter * EnableStripWhitespaceOnSave
autocmd BufWritePost * call system("!ctags -R --exclude=.git --exclude=tmp --exclude=node_modules --exclude=spec --exclude=log --exclude=docs --exclude=.eyeglass_cache --exclude=bundle --exclude=test --exclude=npm-packages-offline-cache --exclude=lotus_react/node_modules --exclude=vendor --exclude=dist")

if version >= 700
  map <C-t> <Esc>:tabnew<CR>
  map <C-c> <Esc>:tabclose<CR>
  map <C-n> <Esc>:NerdTreeToggle<CR>
endif


"Install Vim-Plug from https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'mustache/vim-mustache-handlebars'
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'thoughtbot/vim-rspec'
"Plug 'bling/vim-airline'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'janko-m/vim-test'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'suan/vim-instant-markdown'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'w0ng/vim-hybrid'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Elm
Plug 'lambdatoast/elm.vim'
Plug 'elmcast/elm-vim'

" Themes
call plug#end()


" Elm
"let g:ycm_semantic_triggers = {
"     \ 'elm' : ['.'],
"     \}
let g:elm_format_autosave = 1
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

let g:airline_theme='angr'
let g:airline_solarized_bg = 'dark'
