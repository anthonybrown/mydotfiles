execute pathogen#infect()
call pathogen#helptags()

"autocmd FileType html,htmldjango,jinjahtml,eruby,mako,ejs
let g:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako,ejs

if has ("autocmd")
  autocmd!
endif

if has ("syntax")
  syntax enable
endif

if has('multi_byte')
  let &showbreak = '↳ '
else
  let &showbreak = '> '
endif

filetype plugin indent on
syntax on

set nocompatible   " Disable vi-compatibility
set t_Co=256
set background=dark
color mango
set guifont=mezlo\ for\ powerline:h16
set guioptions-=T                   " Removes top toolbar
set guioptions-=r                   " Removes right hand scroll bar
set go-=L                           " Removes left hand scroll bar

if has('gui_running')
  colorscheme solarized
  set guifont=meslo\ LG\ L\ DZ\ for\ powerline:h16
endif

set showmode                       " always show what mode we're currently editing in
set wrap                            " wrap lines
set tabstop=2                       " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeoutlen=50
set visualbell                  " don't beep
set noerrorbells                " don't beep
set autowrite                   "Save on buffer switch
set mouse=a
set laststatus=2
set ttyfast
set ttymouse=xterm
set undofile
set wildchar=<TAB>
set wrapscan

let jshint2_save=1

" removes search results
command! H let @/=""

" trailing white space
autocmd BufWritePre * :%s/\s\+$//e
set list listchars=tab:»·,trail:·

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='fancy'

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" Fast saves
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model

"Auto change directory to match current file ,cd
"nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

nmap <C-b> :NERDTreeToggle<cr>

"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>

"Show (partial) command in the status line
set showcmd

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

highlight Search cterm=underline

" Swap files out of the project root
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
" Run PHPUnit tests
"map <Leader>t :!phpunit %<cr>

" NerdTree stuff
" show hidden files on startup
let NERDTreeShowHidden=1

" start nerd when vim opens
"autocmd vimenter * NERDTree
au BufNewFile,BufRead *.ejs set filetype=html
