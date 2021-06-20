set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

" Autocompletion
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'vim-scripts/AutoComplPop'

" Syntactic analysis
Plug 'scrooloose/syntastic'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color scheme
Plug 'morhetz/gruvbox'

" Better motion
Plug 'easymotion/vim-easymotion'

" Nerdtree
Plug 'scrooloose/nerdtree'

"Navigation between files
Plug 'christoomey/vim-tmux-navigator'

" Run tests
Plug 'janko-m/vim-test', { 'for': ['python'] }
Plug 'tpope/vim-dispatch' " asynchronous

call plug#end()

colorscheme gruvbox

" tabs and spaces handling
set expandtab " hitting Tab in insert mode will produce the appropriate number of spaces
set tabstop=4 " tell vim how many columns a tab counts for
set softtabstop=4 " control how many columns vim uses when you hit Tab in insert mode
set shiftwidth=4 " control how many columns text is indented with the reindent operations (<< and >>)

" how to split windows
set splitbelow
set splitright


noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :vertical resize +3<CR>
noremap <silent> <C-Down> :vertical resize +3<CR>

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

let mapleader=" "
" quit file and save
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" nerdtree open
nmap <Leader>nt :NERDTreeFind<CR>

" easymotion start
nmap <Leader>s <Plug>(easymotion-s2)

" Jedi-vim ------------------------------

let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "right"

" Syntastic ----------------------------

let g:syntastic_python_checkers = ['flake8', 'mypy']
let g:syntastic_python_flake8_post_args='--ignore=E501,D100,D101,D102,D103'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" run tests in a vim8 terminal
let g:test#strategy = "vimterminal"

nmap <silent> <leader>rt :TestNearest<CR>
nmap <silent> <leader>rT :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>
nmap <silent> <leader>rg :TestVisit<CR>

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

" vim-powered terminal in split window
map <Leader>t :vnew term://.//296:/bin/bash<CR>
map <Leader>T :new term://.//296:/bin/bash<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"Set terminal
tnoremap <esc> <C-\><C-n>
nmap <Leader>i :startinsert<CR>
