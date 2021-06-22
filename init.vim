if has('nvim')
    let g:vim_home = expand('~/.config/nvim')
else
    let g:vim_home = expand('~/.vim')
endif

" -------------
" rcファイル読み込み関数
"

function! s:source_rc(rc_file_name) abort
    let rc_file = g:vim_home . '/' . a:rc_file_name
    if filereadable(rc_file)
        execute 'source' rc_file
    else
        echoerr "読み込めないファイルです: " . rc_file
    endif
endfunction

" -------------
" Leaderキーの割り当て　とりあえずスペースで
"

let mapleader = "\<Space>"

" -------------
"  vim標準の設定
"

call s:source_rc('default.vim')
call s:source_rc('mapping.vim')
call s:source_rc('smooth_scroll.vim')

" -------------
"  PlugIn設定
"

call plug#begin('~/.vim/plugged')

call s:source_rc('plugin/deoplete.vim')
call s:source_rc('plugin/fzf.vim')
call s:source_rc('plugin/nerdtree-buffer-ops.vim')
call s:source_rc('plugin/nerdtree-git.vim')
call s:source_rc('plugin/nerdtree-syntax-highlight.vim')
call s:source_rc('plugin/nerdtree-visual-selection.vim')
call s:source_rc('plugin/nerdtree.vim')
call s:source_rc('plugin/scrollbar.vim')
call s:source_rc('plugin/traces.vim')
call s:source_rc('plugin/vim-airline.vim')
call s:source_rc('plugin/vim-devicons.vim')
call s:source_rc('plugin/vim-gitgutter.vim')
call s:source_rc('plugin/vim-lsp.vim')
call s:source_rc('plugin/vim-sclow.vim')
call s:source_rc('plugin/vim-lsp-ale.vim')
call s:source_rc('plugin/ale.vim')
call s:source_rc('plugin/vim-surround.vim')
call s:source_rc('plugin/auto-pairs.vim')

" -------------
" NeoVim向けPlugIn
call s:source_rc('plugin/blamer.vim')

" -------------
" カラースキーム系
"

call s:source_rc('plugin/molokai.vim')
call s:source_rc('plugin/shirotelin.vim')

" -------------
"  プラグインのインストールはここまで
call plug#end()

" -------------
" テーマ系の設定
" 

" カラースキームを選択"
colorscheme shirotelin

" airline-vimのテーマを選択
let g:airline_theme = 'solarized'

" ------------
"  起動時の挙動設定
"

" ファイルが選択されて起動した場合フォルダツリーの場所を移動する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 1 || exists("s:std_in") | wincmd p | endif

" 初期選択バッファを別に移す
autocmd VimEnter * NERDTree | wincmd p

" 引数なしでの起動ではfzfを起動する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | Files

