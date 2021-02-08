call plug#begin('~/.config/nvim/autoload/plugged')


"status line theme
Plug 'itchyny/lightline.vim'
"vscode color scheme
Plug 'tomasiser/vim-code-dark'

"install nodejs and npm for coc 
Plug 'neoclide/coc.nvim', {'branch': 'release'}



call plug#end()
