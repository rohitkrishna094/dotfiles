set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tomasiser/vim-code-dark'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'itchyny/lightline.vim'
Plugin 'jszakmeister/vim-togglecursor'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plugin 'unblevable/quick-scope' 
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plugin 'tpope/vim-abolish'
call vundle#end()

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