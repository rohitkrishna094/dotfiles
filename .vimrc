set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

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
call vundle#end()
colorscheme codedark

" mappings
map <C-n> :NERDTreeToggle<CR>
set timeoutlen=1000 ttimeoutlen=0

let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 1 " default 0
set laststatus=2
set noshowmode
set mouse=a
syntax on
let g:lightline = {
     \ 'colorscheme': 'one',
    \ }
let g:togglecursor_force = 'xterm'
set number relativenumber

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

" this opens nerdtree on startup, however lightline is not turned on when this happens, todofix it
autocmd VimEnter * NERDTree | wincmd p