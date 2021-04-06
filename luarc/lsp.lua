local on_attach = require'completion'.on_attach

require'lspconfig'.pyls.setup{ on_attach=on_attach }
