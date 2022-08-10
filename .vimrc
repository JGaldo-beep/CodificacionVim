set number
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set bg=dark
set nohlsearch

call plug#begin('~/.vim/plugged')
 
"Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

call plug#end()

"colorscheme gruvbox
colorscheme onedark

let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>; añ
nmap <Leader>'; aÑ

"Install this to add plugins to your vim/nvim editor

"VIM UNIX
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
"NEOVIM UNIX
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
       
