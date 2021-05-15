syntax on
syntax enable           "enables syntax highlighting
filetype on
filetype plugin indent on

set title
set showtabline=2
set cursorline
set cmdheight=2
set background=dark
set cindent
set autoindent
set smartindent
set history=1000

set ruler
set number relativenumber
set nowrap          "display long lines as it is
set encoding=utf-8
set fileencoding=utf-8
" Display incomplete commands
set showcmd
set showmatch

"Tab == 4 spaces
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" Backspace should delete tabwidth of characters
set smarttab

"search settings
set incsearch
set hlsearch
set ignorecase
set smartcase
" Clear search highlights with <C-L>
nnoremap <silent> <C-L> :nohlsearch<cr><C-L>


set noerrorbells
set completeopt-=preview
set mouse=a                             "enables mouse usage
set clipboard+=unnamedplus

" Open new split panes to right and bottom, which feels more natural
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

"set command completion
set wildmenu
set wildmode=list:longest

" Persistent_undo
set undodir=~/.config/nvim/undo//
set undofile
set undolevels=1000

set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments

set t_Co=256
set laststatus=2
set noshowmode
