call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'itchyny/lightline.vim'
Plug 'jszakmeister/vim-togglecursor'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'unblevable/quick-scope' 
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-abolish'

call plug#end()

colorscheme codedark
filetype off                  " required
syntax on


let mapleader = " "
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:lightline = {
     \ 'colorscheme': 'one',
    \ }
let g:togglecursor_force = 'xterm'
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:incsearch#auto_nohlsearch = 1
let g:coc_disable_startup_warning = 1

let NERDTreeShowHidden=1
" mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR> :UndotreeFocus<CR>
" toggle hybrid relative line numbers with \n
nnoremap <leader>n :set relativenumber!<Cr>
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
nnoremap Y y$

set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set noshowmode
set mouse=a
set nocompatible              " be iMproved, required
set noerrorbells
set smartindent
set number
set noswapfile
set ignorecase
set smartcase
set hlsearch
" Change the below colors later on
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

" this opens nerdtree on startup, however lightline is not turned on when this happens, todofix it
autocmd VimEnter * NERDTree | wincmd p | call lightline#update()

" return to absolute line numbering when cursor leaves buffer/window/split
augroup numbertoggle
  autocmd!
  autocmd BufLeave,WinLeave,FocusLost * set norelativenumber
augroup END

