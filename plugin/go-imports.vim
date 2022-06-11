" GitHub: https://github.com/mattn/vim-goimports
" golangの自動インポート用のライブラリ
"

Plug 'mattn/vim-goimports'
let g:goimports = 1
let g:goimports_simplify = 1

" goimport (default)
let g:goimports_cmd = 'goimports'
let g:goimports_simplify_cmd = 'gofmt'
