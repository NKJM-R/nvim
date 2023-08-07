#!/bin/bash

# 指定したコミット範囲で変更されたファイルを取得
files=$(git diff --name-only ${@})

# 各ファイルについてループ
for file in $files
do
    # ファイルに関連する最新のコミットハッシュを取得
    commit=$(git log -1 --pretty=format:'%H' -- $file)
    # コミットハッシュとファイル名を表示
    echo $commit $file
done

