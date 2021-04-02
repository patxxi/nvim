call plug#begin('~/.vim/plugged')

" Themes 

Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'

"IDE
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Icons
Plug 'ryanoasis/vim-devicons'

"Easy motion para moverse facil etre archivos del arbol
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Emmet de vim para html 
Plug 'mattn/emmet-vim'

"Rainbow brackets y mejoras de colores en la interfaz
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'

"Close tag para html
Plug 'alvan/vim-closetag'


"Buscador de archivos fzf
Plug 'junegunn/fzf', {'do' : {-> fzf#install()}}
Plug 'junegunn/fzf.vim'

"Polyglot para tener resaltado en multiples lenguajes
"Plug 'sheerun/vim-polyglot'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'yuezk/vim-js'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Sirve para trabaar cn git, indica que cambios se han hecho en el archivo
Plug 'mhinz/vim-signify'

"Lineas de identado
Plug 'yggdroot/indentline'

"Git
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'

"Linteo y modificar codigo
"Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

"Css colors
Plug 'ap/vim-css-color'


" Code format
Plug 'Chiel92/vim-autoformat'

call plug#end()


"Themes config
set termguicolors
colorscheme gruvbox 
set bg=dark
let g:gruvbox_contrast_dark = "hard"


