"mappings
nmap ; :
imap jk <Esc>

"general
syntax on
set nu
set background=dark

"indents
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"show current position
set ruler

"ignore case when searching
set ignorecase

"Highlight serach results
set hlsearch
set incsearch

"show matching brackets
set showmatch
set mat=2

"no annoying error bells
set noerrorbells

"moving around
map j gj
map k gk

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
