" GitHub: https://github.com/mattn/vim-sonictemplate
" template系のやつ
"
" 使い方: https://gorilla.netlify.app/articles/20200312-high-speed-coding-with-vim.html#postfix-code-completion%E3%81%A8%E3%81%AF

Plug 'mattn/vim-sonictemplate'

let g:sonictemplate_vim_template_dir = expand('~/.config/nvim/sonictemplate')

" control l でテンプレートに変換
let g:sonictemplate_postfix_key = '<C-l>'
