vim.opt.termguicolors = true

vim.opt.backup = false
-- スワップファイルを作る
vim.opt.swapfile = false
-- 編集中のファイルが変更されたら自動で読み直す
vim.opt.autoread = true
-- バッファが編集中でもその他のファイルを開けるように
vim.opt.hidden = true
-- 入力中のコマンドをステータスに表示する
vim.opt.showcmd = true
-- undoの永続可
vim.opt.undofile = true

-- 見た目系
-- 行番号を表示
vim.opt.number = true
-- 行番号の相対表示
-- vim.opt.relativenumber = true
-- 現在の行を強調表示
vim.opt.cursorline = true
-- 現在の行を強調表示（縦）
vim.opt.cursorcolumn = true
-- 行末の1文字先までカーソルを移動できるように
vim.opt.virtualedit = "onemore"
-- インデントはスマートインデント
vim.opt.smartindent = true
-- ビープ音を可視化
vim.opt.visualbell = true
-- 括弧入力時の対応する括弧を表示
vim.opt.showmatch = true
-- ステータスラインを常に表示
vim.opt.laststatus = 2

-- コマンドラインの補完
vim.opt.wildmode = 'list:longest'

vim.opt.list = true
vim.opt.listchars = "tab:»-,extends:»,precedes:«"
-- Tab文字を半角スペースにする
vim.opt.expandtab = true
-- 行頭以外のTab文字の表示幅（スペースいくつ分）
vim.opt.tabstop = 2
-- 行頭でのTab文字の表示幅
vim.opt.shiftwidth = 2

-- 検索系
-- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
vim.opt.ignorecase = true
-- 検索文字列に大文字が含まれている場合は区別して検索する
vim.opt.smartcase = true
-- 検索文字列入力時に順次対象文字列にヒットさせる
vim.opt.incsearch = true
-- 検索時に最後まで行ったら最初に戻る
vim.opt.wrapscan = true
-- 検索語をハイライト表示
vim.opt.hlsearch = true
