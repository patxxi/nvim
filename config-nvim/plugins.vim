call plug#begin('~/.vim/plugged')

" Themes

Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'xiyaowong/nvim-transparent'
Plug 'luochen1990/rainbow'


"IDE
Plug 'jonsmithers/vim-html-template-literals'
Plug 'pangloss/vim-javascript'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'SirVer/ultisnips'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
" Plug 'codota/tabnine-vim'
Plug 'mbbill/undotree'
"Plug 'neovim/nvim-lspconfig'

" Code screenshot
Plug 'segeljakt/vim-silicon'


"Easy motion para moverse facil etre archivos del arbol
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree' |
Plug 'Xuyuanp/nerdtree-git-plugin' |
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Emmet de vim para html
Plug 'mattn/emmet-vim'

"Rainbow brackets y mejoras de colores en la interfaz
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'

"Close tag para html
Plug 'alvan/vim-closetag'

""terminal
Plug 'vimlab/split-term.vim'

"Buscador de archivos fzf
Plug 'junegunn/fzf', {'do' : {-> fzf#install()}}
Plug 'junegunn/fzf.vim'

"Highligth for vim with in multiple language
"
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/completion-treesitter'

"Sirve para trabaar cn git, indica que cambios se han hecho en el archivo
Plug 'mhinz/vim-signify'

"Lineas de identado
Plug 'yggdroot/indentline'

"Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'APZelos/blamer.nvim'

"Linteo y modificar codigo
"Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

"Css colors
Plug 'ap/vim-css-color'


" Code format
Plug 'Chiel92/vim-autoformat'

Plug 'ryanoasis/vim-devicons'

call plug#end()


"Themes config
set termguicolors
colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark="hard"


