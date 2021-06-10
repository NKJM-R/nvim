" https://github.com/ryanoasis/vim-devicons
" ICON変える奴

Plug 'ryanoasis/vim-devicons'

" フォルダアイコンを表示
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" https://github.com/ryanoasis/nerd-fonts#font-installation
" Nerd Fontをインストールしないと文字化けする
" @TODO: 自動でインストールするスクリプトを追加する
" 参考ドキュメント: https://qiita.com/park-jh/items/4358d2d33a78ec0a2b5c

