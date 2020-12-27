" NeoVim Config
"
" Contents:
"     1. Plugins
"     2. Plugin Config
"     3. NeoVim Settings
"     4. Vim Usability Settings
"     5. Mappings

" 1. Plugins

call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'

  " File explore
  Plug 'scrooloose/nerdtree'

  " Fuzzy Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Code completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Syntax highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

  " Nice to haves
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'liuchengxu/vim-which-key'
  Plug 'justinmk/vim-sneak'
call plug#end()


" 2. Plugin Config

" External (big ones)
let g:mapleader = " "
let g:maplocalleader = ','

source $HOME/.config/nvim/plugins/which-key.vim
source $HOME/.config/nvim/plugins/coc.vim

" Sneak
let g:sneak#label = 1 " Show labels
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search
let g:sneak#s_next = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"Close buffer moves to prev buffer first
nmap :bd<CR> :bp\|bd #<CR>

" FZF
nnoremap <C-p> :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}


" 3. NeoVim Settings


" Colors and Highlighting
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme onedark

" Terminal
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l

" start terminal in insert mode 
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://fish
    resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" 4. Vim Usability Settings

set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

set hidden                              " Required to keep multiple buffers open multiple buffers
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set cino+=(0
set scrolloff=3
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
" set mouse=a                            " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber               " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs 
" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set incsearch

" Use 4 spaces for python files only
au BufNewFile,BufRead *.py
    \  set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set foldmethod=indent
    \| set foldlevel=99


" 5. Mappings

" Leader Convenience mappings
" nnoremap <Leader>za za                  " Fold Code 

" Switchbuffers shortcut
nnoremap <A-{> :bprev<CR>
nnoremap <A-}> :bnext<CR>

" Close buffer moves to prev buffer first
nmap :bd<CR> :bp\|bd #<CR>

" Cleaner Movement 
map j gj
map k gk

" Pane Movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pane Resize
nnoremap <silent> <A-j>    :resize -2<CR>
nnoremap <silent> <A-k>    :resize +2<CR>
nnoremap <silent> <A-h>    :vertical resize -2<CR>
nnoremap <silent> <A-l>    :vertical resize +2<CR>

" Enter/Exit Insert + saving
nmap ; :
imap jk <Esc>

command! W w
command! Q q
command! WQ wq
command! Wq wq
