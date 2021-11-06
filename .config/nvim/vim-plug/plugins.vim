"Plugins for nvim using vim plug 
call plug#begin('~/.config/nvim/autoload/plugged')


"status line theme
Plug 'itchyny/lightline.vim'
"vscode color scheme
Plug 'tomasiser/vim-code-dark'

"install nodejs for coc 
"sudo apt install nodejs
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"fzf 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"which key
Plug 'liuchengxu/vim-which-key'

Plug 'mhinz/vim-signify'

call plug#end()
