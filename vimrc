set nocompatible             " be iMproved, required
filetype plugin indent on    " required

" Hybrid line numbering
set number relativenumber

" color scheme
colors sorbet
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

" syntax highlighting
syntax on

" highlight the 80th column
set ruler
set colorcolumn=80

" Highlight TODO and FIXME
" Or the whole line if followed by a colon
augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Error', '\(^.*\(\TODO\|FIXME\):.*\)\|TODO\|FIXME\c', -1)
augroup END

" make java switch expression not break syntax highlighting
syn region  javaLabelRegion	transparent matchgroup=javaLabel start="\<case\>" matchgroup=NONE end=":" end="->" contains=javaNumber,javaCharacter,javaString

" Space as leader key
let mapleader=" "

set background=dark
set path+=**
" ignore .class files in maven target for gf
set wildignore+=*/target/*
set wildmenu
set cursorline
set smartindent
set spelllang=en_us,de_de
set spell
set complete+=kspell
set ts=4 sw=4
set expandtab
let g:netrw_bufsettings = 'nu rnu noma nomod nowrap ro nobl'

" remove ugly gray background from comments
hi Comment cterm=NONE
hi SpecialComment cterm=NONE

set statusline+=%{wordcount().words}\ words

" always navigate by visual line
noremap j gj
noremap k gk

" Auto line breaks in txt and md files
autocmd BufRead,BufNewFile *.md setlocal tw=80
autocmd BufRead,BufNewFile *.txt setlocal tw=80

set list
set listchars=tab:>-,trail:.

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

set incsearch
