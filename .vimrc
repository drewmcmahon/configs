" Plugins
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-buftabline'
call plug#end()

" Plugin features
let g:javascript_plugin_flow = 1
nnoremap <c-p> :FZF<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize = 20

" Switch buffers shortcut
nnoremap <Esc>{ :bprev<CR>
nnoremap <Esc>} :bnext<CR>

" Features
set nocompatible
filetype indent plugin on
syntax on
colorscheme space-vim-dark
 
" Must have options 
set hidden
set wildmenu
set showcmd
set hlsearch
 
" Usability options
set ignorecase
set smartcase
set incsearch
set cino+=(0
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set cursorline
set scrolloff=3
 
" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Visual
set showmatch
set mat=2

" Mappings 
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
command! W w
command! Q q
command! WQ wq
command! Wq wq
map j gj
map k gk
nmap ; :
imap jk <Esc>
