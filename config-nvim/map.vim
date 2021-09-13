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
nmap <Leader>t :10Term<CR>

"Debugger Vimspector"
nmap <Leader>dd <Plug>VimspectorContinue
nmap <Leader>ds <Plug>VimspectorStop
nmap <Leader>dr <Plug>VimspectorRestart
nmap <Leader>dp <Plug>VimspectorPause
nmap <Leader>dp <Plug>VimspectorPause
nmap <Leader>db <Plug>VimspectorToggleBreakpoint
nmap <Leader>dcb <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader>di <Plug>VimspectorStepInto
nmap <Leader>do <Plug>VimspectorStepOut
nmap <Leader>du <Plug>VimspectorStepOver
nmap <Leader>dev <Plug>VimspectorBallonEval
nmap <Leader>ddf :VimspectorReset<CR>
nmap <Leader>dl <Plug>VimspectorRunToCursor

" UnDoo toggle tree for multiple changes
nnoremap <F5> :UndotreeToggle<CR>
