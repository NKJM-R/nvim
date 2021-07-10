# 参考文献

- ソート系のまとめ: https://qiita.com/rohinomiya/items/f6c175e1f7d529cb15f0

# コーディング環境

## キーボード
- HHKB
  - HHKB設定は2と6がONの他はOFF

## Mac
### システム環境設定　-> キーボード 
- キーのリピート　=> 早い 
- リピート入力認識までの時間 => 早い

## Karabiner-Elements
- open /Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/
- セキュリティとプライバシー　=> 入力監視に以下を追加
- karabiner-grabber
- karabiner-observer

### Complex modifications Add rule
- escキーを押したときに、英数キーも送信する(vim用）
- Ctrl + \[ を押したときに英数キーを送信する

### Simple modifications
- 英数キーにescapeキーを割り当てる
- かなキーにleft_optionを割り当てる

### mdrのインストール
- markdownのvim内プレビュー機能を使うためには
- [mdrのGitHub](https://github.com/MichaelMure/mdr)のリリースページからosに一致したものをインストール(uname -a)
- 実行権限を付与してpathを通す

