" GitHub: https://github.com/APZelos/blamer.nvim"
" GitLensみたいなやつ
" 参考文献: https://qiita.com/Yoika/items/26553e8ad067b9e468e8

Plug 'APZelos/blamer.nvim'

" blamer.nvim設定
" format
let g:blamer_date_format = '%y/%m/%d %H:%M'

" vimの起動時にblamerを有効
let g:blamer_enabled = 1

" 非難メッセージが表示されるまでのミリ秒単位の遅延 default1000
let g:blamer_delay = 1000

" プレフィックス
let g:blamer_prefix = ' > '

