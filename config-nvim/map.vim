let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

"presionamos la tecla leader, seguido nt y en la linea se ejecuta el comando nerdtreefind, luego damos a enter, todo en modo normal
nmap <Leader>nt :NERDTreeFind<CR> 

"remap fugitive
nmap <Leader>gs :G<CR>

"fast move
nmap <Leader>k 20k<CR>
nmap <Leader>j 20j<CR>

tnoremap <Esc> <C-\><C-n>
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
