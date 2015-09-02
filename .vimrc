set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'
Plugin 'flazz/vim-colorschemes'

" VIM improved
Plugin 'SearchComplete' " buggy :)
Plugin 'tpope/vim-unimpaired'

" VIM IDE
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'skwp/greplace.vim'

" Programmming
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'spf13/vim-autoclose'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" Webdev
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'

" JavaScript plus
Plugin 'maksimr/vim-jsbeautify'

" Perl
Plugin 'vim-perl/vim-perl'

" Custom
Plugin 'tpope/vim-markdown'


" modern editor
Plugin 'kristijanhusak/vim-multiple-cursors'



" setup Honza snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" setup my snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/simo-snippets/snippets'

call vundle#end()            " required

let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["ruby", "php"],
    \ "passive_filetypes": ["puppet"]}  

filetype plugin indent on    " required

" setup from previous loaded plugins
colorscheme solarized

" setup look
filetype plugin indent on
syntax on
set background=dark
set number
set guifont=Ubuntu\ Mono:h14

" setup text handling
scriptencoding utf-8
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

" setup behaviour
:set autoread                   " when file is changed by external program and buffer is saved, load changes from the program (formatters, git, ...)

" setup TagBar
nmap <F2> :TagbarOpenAutoClose<CR>
nmap <F3> :TagbarToggle<CR>

" setup shortcuts
map <c-f> :call JsBeautify()<cr>

" setup javascript
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" autocomplete
set complete-=i " dont include files (recursively, searching lags)

" snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
