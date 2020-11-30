source $HOME/.vim/.config/nvim/coc.vim

call plug#begin('~/.vim/plugged')

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'unblevable/quick-scope' 
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'chun-yang/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'

call plug#end()

syntax on
set t_Co=256
set cursorline
" colorscheme onehalflight
colorscheme codedark
let g:airline_theme='onehalfdark'
" lightline
let g:lightline = { 'colorscheme': 'one' }
let g:incsearch#auto_nohlsearch = 1
let g:AutoPairsFlyMode = 1

let mapleader = " "
set noshowmode
set mouse=a
set nocompatible              " be iMproved, required
set noerrorbells
set smartindent
set noswapfile
set ignorecase
set smartcase
set hlsearch
set rnu
set nu
set clipboard=unnamed

noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
