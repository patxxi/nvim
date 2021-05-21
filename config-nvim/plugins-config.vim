
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"emmet config
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"Kite configuration
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:kite_supported_languages = ['javascript', 'python']

"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"Bracket solarizer 
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:rainbow_active=1

"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"CloseTag
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"git blame
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"let g:blamer_enabled = 1
"
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
" LSP CONFIGURATION
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

let g:lsp_settings_filetype_python=['pyls-ms', 'pyls-all']
let g:lsp_settings_filetype_javascript=['eslint-language-server', 'typescript-language-server']
let g:lsp_diagnostic_echo_delay = 1000
let g:lsp_diagnostics_highlights_enabled = 0
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"TREE SITTER CONFIGURATION SET UP
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF



"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"navigator
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:tmux_navigator_save_on_switch = 1

"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"Formater
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
let g:formatters_python = ['autopep8']

"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"terminal
set splitbelow
"----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

let g:vimspector_enable_mappings = 'HUMAN'

