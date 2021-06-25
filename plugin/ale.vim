" GitHub: https://github.com/dense-analysis/ale#standard-installation
" 非同期リントプラグイン
"

" Plug 'dense-analysis/ale'

" エラー間を移動する
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ファイル保存時のみにのみチェックする
"
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

