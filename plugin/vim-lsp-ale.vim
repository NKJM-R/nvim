" GitHub: https://github.com/rhysd/vim-lsp-ale
" vim lsp とaleをつなぐ奴
"

Plug 'rhysd/vim-lsp-ale'

let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:ale_fix_on_save = 1
