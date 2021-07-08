" ------------
" 起動時の挙動設定
"

" ファイルが選択されて起動した場合フォルダツリーの場所を移動する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 1 || exists("s:std_in") | wincmd p | endif

" 初期選択バッファを別に移す
autocmd VimEnter * NERDTree | wincmd p

" 引数なしでの起動ではfzfを起動する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | Files

