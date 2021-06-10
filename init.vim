if has('nvim')
    let g:vim_home = expand('~/.config/nvim')
else
    let g:vim_home = expand('~/.vim')
endif

" -------------
" rcファイル読み込み関数
"

function! s:source_rc(rc_file_name)
    let rc_file = expand(g:vim_home . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

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

call s:source_rc('plugin/fzf.vim')
call s:source_rc('plugin/vim-lsp.vim')
call s:source_rc('plugin/trace.vim')
call s:source_rc('plugin/vim-sclow.vim')
call s:source_rc('plugin/scrollbar.vim')
call s:source_rc('plugin/vim-airline.vim')
call s:source_rc('plugin/vim-devicons.vim')

" -------------
" カラースキーム系
"

call s:source_rc('plugin/molokai.vim')
call s:source_rc('plugin/shirotelin.vim')

call plug#end()

" -------------
" テーマ系の設定
" 

" カラースキームを選択"
colorscheme shirotelin

" airline-vimのテーマを選択
let g:airline_theme = 'solarized'

