" GitHub: https://github.com/APZelos/blamer.nvim"
" GitLensみたいなやつ
" 参考文献: https://qiita.com/Yoika/items/26553e8ad067b9e468e8

Plug 'APZelos/blamer.nvim'

" blamer.nvim設定
" format
let g:blamer_date_format = '%Y/%m/%d %H:%M'

" vimの起動時にblamerを有効
let g:blamer_enabled = 1

" 非難メッセージが表示されるまでのミリ秒単位の遅延 default1000
let g:blamer_delay = 300

" プレフィックス
let g:blamer_prefix = ' > '

" メッセージの色
" highlight Blamer guifg=lightgrey

" コミット日を相対形式で表示します
let g:blamer_relative_time = 1

