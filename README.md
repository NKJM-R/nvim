# 初回起動
```
git clone https://github.com/NKJM-R/nvim.git && \
nvim -c JetpackSync -c quit -c quit && \
sudo apt install -y ripgrep fzf
```

# 参考文献

- ソート系のまとめ: https://qiita.com/rohinomiya/items/f6c175e1f7d529cb15f0

# プラグインの更新
- ``:JetpackSync``

# コーディング環境

# plug管理
- https://github.com/junegunn/vim-plug

## キーボード
- HHKB
  - HHKB設定は2と6がONの他はOFF

## Mac
### Terminal
- Nerd Fontをインストールしないと文字化けする
  - https://github.com/ryanoasis/nerd-fonts#font-installation
  - 参考ドキュメント: https://qiita.com/park-jh/items/4358d2d33a78ec0a2b5c
- Theme
  - https://github.com/yasukotelin/shirotelin-terminal-app
- brew install ripgrep
 
### システム環境設定　-> キーボード 
- キーのリピート　=> 早い 
- リピート入力認識までの時間 => 早い

## Karabiner-Elements

### Complex modifications Add rule
- https://ke-complex-modifications.pqrs.org/?q=esc%E3%82%AD%E3%83%BC%E3%82%92%E6%8A%BC%E3%81%97%E3%81%9F%E3%81%A8%E3%81%8D
  - escキーを押したときに、英数キーも送信する(vim用）
  - Ctrl + \[ を押したときに英数キーを送信する: 

### Simple modifications
- 英数キーにescapeキーを割り当てる
- かなキーにleft_optionを割り当てる
