" Inspired by https://github.com/nickjj/dotfiles/blob/master/.vimrc
" windows nvim
source $HOME/.vim/.config/nvim/coc.vim

call plug#begin('~/.vim/plugged')

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'unblevable/quick-scope' 
Plug 'tpope/vim-surround'
" Plug 'easymotion/vim-easymotion'
Plug 'asvetliakov/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'chun-yang/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'machakann/vim-highlightedyank'
Plug 'nelstrom/vim-visual-star-search'
Plug 'haya14busa/is.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-speeddating'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'

call plug#end()

syntax on
colorscheme codedark
let g:airline_theme='onehalfdark'
let g:lightline = { 'colorscheme': 'one' }
let g:incsearch#auto_nohlsearch = 1
let g:AutoPairsFlyMode = 1

let mapleader = " "


set autoindent
set backspace=indent,eol,start
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set expandtab smarttab
set hlsearch
set ignorecase
set laststatus=2
set matchpairs+=<:>
set mouse=a
set nocompatible 
set noerrorbells visualbell t_vb=
set noshowmode
set noswapfile
set noshiftround
set nospell
set nostartofline
set nu rnu
set ruler
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set smartindent
set softtabstop=2
set spelllang=en_us
set splitbelow
set splitright
set tabstop=2
set t_Co=256
set textwidth=0
set ttimeout
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast
if !has('nvim')
  set ttymouse=sgr
endif
set virtualedit=block
set whichwrap=b,s,<,>
set wildmenu
set wildmode=full
set wrap

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

" reload vimrc 
nnoremap <Leader>r :source $MYVIMRC<CR>

map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
" incsearch mappings
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" -----------------------------------------------------------------------------
map /  <Plug>(incsearch-forward)
" Basic Mappings
" Navigate around splits with a single key combo.
map /  <Plug>(incsearch-forward)
map /  <Plug>(incsearch-forward)
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>
" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

" Clear search highlights.
map <Leader><Space> :let @/=''<CR>

" use below to make this work for youtube for example. See https://github.com/glacambre/firenvim/issues/808#event-4050138718
" let g:firenvim_config = {
"         \ 'localSettings': {
"                 \ '^https?://[^/]*youtu\.?be[^/]*/': {
"                         \ 'selector': '#contenteditable-root'
"                 \ },
"         \ }
" \ }

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['https?://[^/]*algoexpert.io/*'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://[^/]*leetcode.com/*'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://[^/]*binarysearch.[com|io]/*'] = { 'takeover': 'never', 'priority': 1 }

" yank highlight duration
let g:highlightedyank_highlight_duration = 250

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>

" -----------------------------------------------------------------------------
" Basic autocommands
" -----------------------------------------------------------------------------
" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Only show the cursor line in the active buffer.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

map <Leader> <Plug>(easymotion-prefix)

" -----------------------------------------------------------------------------
" Plugin settings, mappings and autocommands
" -----------------------------------------------------------------------------

" .............................................................................
" unblevable/quick-scope
" .............................................................................

" Trigger a highlight in the appropriate direction when pressing these keys.
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']

" Only underline the highlights instead of using custom colors.
" highlight QuickScopePrimary gui=underline cterm=underline
" highlight QuickScopeSecondary gui=underline cterm=underline

" .............................................................................
" SirVer/ultisnips
" .............................................................................

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" set <F5>=<C-v><F5>
" nnoremap <F5> :UndotreeToggle<CR>