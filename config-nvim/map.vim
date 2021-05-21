let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

"presionamos la tecla leader, seguido nt y en la linea se ejecuta el comando nerdtreefind, luego damos a enter, todo en modo normal
nmap <Leader>nt :NERDTreeFind<CR> 

"remap fugitive
nmap <Leader>gs :G<CR>

"fast move
nmap <Leader>k 20k<CR>
nmap <Leader>j 20j<CR>

"Fuzzy finder
nmap <Leader>f :FZF<CR>


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
tnoremap <Esc> <C-\><C-n>
nmap <Leader>t :20Term<CR>
